package asr.proyectoFinal.servlets;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.Buffer;
import java.nio.file.Files;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import asr.proyectoFinal.dao.CloudantPalabraStore;
import asr.proyectoFinal.dominio.Palabra;
import asr.proyectoFinal.services.Analyzer;
import asr.proyectoFinal.services.T2Speech;

/**
 * Servlet implementation class Controller
 */
@WebServlet(urlPatterns = {"/listar", "/insertar", "/hablar"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		out.println("<html><head><meta charset=\"UTF-8\"></head><body>");
		
		CloudantPalabraStore store = new CloudantPalabraStore();
		System.out.println(request.getServletPath());
		switch(request.getServletPath())
		{
			case "/listar":
				if(store.getDB() == null)
					  out.println("No hay DB");
				else
					out.println("Palabras en la BD Cloudant:<br />" + store.getAll());
				break;
				
			case "/insertar":
				Palabra palabra = new Palabra();
				String parametro = request.getParameter("palabra");

				if(parametro==null)
				{
					out.println("usage: /insertar?palabra=palabra_a_traducir");
				}
				else
				{
					if(store.getDB() == null) 
					{
						out.println(String.format("Palabra: %s", palabra));
					}
					else
					{
						palabra.setName(parametro);
						store.persist(palabra);
						String urlRedireccion = "results.jsp?palabra=";
						String respuesta = Analyzer.toneAnalyzer(parametro).toString();
						urlRedireccion = urlRedireccion.concat(respuesta);
						response.sendRedirect(urlRedireccion);
					    System.out.println(respuesta);	
					    
					    
						InputStream mp3stream = T2Speech.conversionToSpeech(respuesta);
						
						String path_mp3 = request.getRealPath("/mp3");
						
						File f = new File(path_mp3 + "/temp.mp3");
						
						if (f != null) {
							f.delete();
						}
						OutputStream streamSalida = new FileOutputStream(f);
					    

						//===========================================================
						byte[] buffer = new byte[2048];
						  int length = 0;
						  while ((length = mp3stream.read(buffer)) > 0) {
							  streamSalida.write(buffer, 0, length);
							  streamSalida.flush();
						  }

						streamSalida.close();

							
						request.setAttribute("palabra", mp3stream);
						//request.getRequestDispatcher("index.jsp").forward(request, response);
						//===========================================================
						
					}
				}
				break;
		}
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
