<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--

Template 2092 Shelf

http://www.tooplate.com/view/2092-shelf

-->
    <title>psycOnline</title>

    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">                <!-- Font Awesome -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/tooplate-style.css">                                   <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

    <body>
        
        <div class="container">
            <header class="tm-site-header">
                <h1 class="tm-site-name">PsycOnline</h1>
                <p class="tm-site-description">Tu psicólogo virtual online</p>
                
                <nav class="navbar navbar-expand-md tm-main-nav-container">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#tmMainNav" aria-controls="tmMainNav" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fa fa-bars"></i>
                    </button>

                    <div class="collapse navbar-collapse tm-main-nav" id="tmMainNav">
                        <ul class="nav nav-fill tm-main-nav-ul">
                            <li class="nav-item"><a class="nav-link active" href="index.jsp">Página principal</a></li>
                            <li class="nav-item"><a class="nav-link" href="team.jsp">El equipo</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.jsp">Contáctanos</a></li>
                        </ul>
                    </div>
                </nav>
                
            </header>
            
            <div class="tm-main-content">
                <section class="tm-margin-b-l">
                    <header>
                        <h2 class="tm-main-title">Bienvenido a tu psicólogo virtual</h2>    
                    </header>
                    
                    <p>En esta página web puedes contarnos brevemente la situación en la que te encuentras y la analizaremos al instante para descubrir tu estado aní­mico y así­ poder ayudarte.</p>
                    
                    <form action="insertar?palabra.value">
						</br></br>¿Qué piensas? </br>Resúmelo en muy pocas palabras: <input type="text" name="palabra" value="">
						<button name="name" value="value" type="submit">enviar a tu psicólogo virtual</button>
					</form>
                </section>

                <section class="media tm-highlight">
                 

                    <div class="media-body">
                        <header>
                            <h2>¿Necesitas ayuda?</h2>
                        </header>
                        <p class="tm-margin-b">Entendemos que nuestro psicólogo virtual no es una persona, por lo que si necesitas ayuda de una persona no dudes en contactar con nosotros, tendrás a tu disposición a los mejores psicólogos del mundo.</p>
                        <a href="contact.jsp" class="tm-white-bordered-btn">Contáctanos</a>
                    </div>                    
                </section>
            </div>

            <footer>
                Copyright &copy; <span class="tm-current-year">2019</span> David&Gonzalo´s Company  
                
                - Designed by <a href="https://www.facebook.com/tooplate" target="_parent">Gonzalo Echanove y David Clemente</a>
            </footer>    
        </div>
        
        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
        <script src="js/popper.min.js"></script>                <!-- Popper (https://popper.js.org/) -->
        <script src="js/bootstrap.min.js"></script>             <!-- Bootstrap (https://getbootstrap.com/) -->
        <script>     
       
            $(document).ready(function(){
                
                // Update the current year in copyright
                $('.tm-current-year').text(new Date().getFullYear());

            });

        </script>             

</body>
</html>