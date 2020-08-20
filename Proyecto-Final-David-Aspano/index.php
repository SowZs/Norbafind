<?php
    session_start();
    $logeado=1;
    if(isset($_POST['login']) or isset($_SESSION['id']))
    {
        include "funciones.php";
        $conexion=conectar();
        $logeado=existe($conexion);
        if($logeado==3)
        {
            $logeado=1;
            ?>
            <div class="error">
                Usuario o Contraseña Incorrectos.
            </div>
            <?php
        }
        if($logeado==0)header("location:buscadoradmin.php");
    }
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>NorbaFind</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='estilos.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='../bootstrap/bootstrap.css'>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#bus").keydown(function() {
                var x = document.getElementById('bor');
                if($(this).val() == null) {
                 x.style.display = 'none';
                } 
                else {
                 x.style.display = 'inline';
                }
            });
            $("#bor").click(function() {
                var x = document.getElementById('bor');
                x.style.display = 'none';
            });
            $("#botlog").click(function(){
                showpopup();
            });
            $("#cancel").click(function(){
                 hidepopup();
            });
        });
        function showpopup()
        {
            $("#flogin").fadeIn();
            $("#flogin").css({"visibility":"visible","display":"block"});
        }
        function hidepopup()
        {
            $("#flogin").fadeOut();
            $("#flogin").css({"visibility":"hidden","display":"none"});
        }
    </script>
</head>
<body class=centrar>
    <a href="index.php"><h1><img src="logoweb.jpg"></h1></a>
    <form autocomplete="off" action="buscador.php" name="buscador" method="get">
        <input class="bus1" type="text" id="bus" name="busqueda" placeholder="Buscar">
        <input class="botonb" type="reset" name="borrar" id="bor" value="X" style="display: none;">
        <br/><br/>
        <input class="boton1" name="boton" type="submit" value="Buscar">
    </form>
    <?php
		if(!isset($_POST['login']) or $logeado==1){
	?>
            <input class="botlog" type="button" name="botlog" id="botlog" value="Login Admin">
            <div class="form-popup" id="flogin">
            <form class="log" autocomplete="off" action="index.php" name="form-login" id="form-login"  method="post">
                <h4>Sesión Administrador</h4>
                <input type="text" id="user" name="user" placeholder="Usuario">
                <input type="password" id="pass" name="pass" placeholder="Contraseña">
                <br/>
                <input type="submit" id="login" name="login" value="Acceder">
                <input type="button" name="cancel" id="cancel" value="Cancelar">
        </form> 
    </div>
    <?php
        }
    ?>
</body>
</html>