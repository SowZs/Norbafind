<?php
    session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>NorbaFind Admin **Crear** </title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='estilos.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='bootstrap/bootstrap.css'>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<form autocomplete="off" class="for2" action="buscadoradmin.php" name="buscador" method="get">
        <a href="index.php"><img src="logo2.jpg"></a>&nbsp;
        <input class="bus2" type="text" name="busqueda" placeholder="Buscar" id="bus2">
        <input class="botonb" type="reset" name="borrar" id="bor" value="X" style="display: none;">
        <input class="boton2" name="boton" type="submit" value="Buscar">
        <div class="cabecera">
        <?php
            include "sesion.php";
        ?>
        </div>
</form>

<br/>
<hr/>

<?php
    include "funciones.php";
    $conexion=conectar();
    if (isset($_POST['aceptar'])){
        $tit=$_POST['tit'];
        $url=$_POST['url'];
        $des=$_POST['des'];
        $sql="INSERT INTO paginas (titulo, enlace, descripcion) VALUES ('$tit', '$url', '$des')";
        $resultado=mysqli_query($conexion,$sql);
        if($resultado){?>
            <div class='exito'>
            <h3>Registro creado con éxito.</h3>
            <a href='buscadoradmin.php'>
            <input class='botform' type='button' value='Volver'>
            </a>
            </div>
        <?php
        }
        else {
            echo "<div class='error1'><h3>Error al crear el registro</h3>
            <a href='buscadoradmin.php'>
            <input class='botform' type='button' value='Volver'>
            </a></div>";
        }
    }
    else{?>
        <form class="form-edit" method="post">
            <h2>Crear Registro</h2>
            <br/>
            <h5>Titulo:</h5>
            <input class="tit" type="text" id="tit" name="tit" placeholder="Título" required>
            <h5>URL:</h5>
            <input class="tit" type="text" id="url" name="url" placeholder="Enlace" required>
            <h5>Descripción:</h5>
            <textarea class="des" id="des" name="des" placeholder="Descripción" required></textarea>
            <br/>
            <input class='botform' type="submit" id="aceptar" name="aceptar" value="Guardar">
            <a href="buscadoradmin.php">
            <input class='botform' type="button" value="Cancelar">
            </a>
        </form>
    <?php 
    }
    ?>
</body>
</html>