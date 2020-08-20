<?php
function conectar(){
    $id=mysqli_connect('localhost','root','','buscador') or die ("Problemas con la base de datos");
    mysqli_set_charset($id,'UTF8');
    return $id;
}

function existe($manejador)
{
 if(isset($_GET['salir'])) {session_unset();return 1;}
 if(isset($_SESSION['id'])){return 0;}
 $pass=md5($_POST['pass']);
 $sql="select * from admins where usuario='".$_POST['user']."' and contraseña='".$pass."'";
 $resultado=mysqli_query($manejador,$sql) or die ("Error de acceso a la base de datos");
 if(mysqli_num_rows($resultado)==1) {
 									$admin=mysqli_fetch_array($resultado);
 									$_SESSION['nombre']=$admin['nombre']."  ".
 									$admin['apellido'];
 									return 0;
									}
else{return 3;}

}
?>