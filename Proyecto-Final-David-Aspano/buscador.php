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
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
            $("#bus2").keydown(function() {
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
        });
    </script>
</head>
<body>
<form autocomplete="off" class="for2" action="buscador.php" name="buscador" method="get">
        <a href="index.php"><img src="logo2.jpg"></a>&nbsp;
        <input class="bus2" type="text" name="busqueda" placeholder="Buscar" id="bus2">
        <input class="botonb" type="reset" name="borrar" id="bor" value="X" style="display: none;">
        <input class="boton2" name="boton" type="submit" value="Buscar">
</form>
<br/>
<hr/>
<div class="margen">
<?php 
        include "funciones.php";
        $con=conectar();
        $busqueda=isset($_REQUEST["busqueda"])?$_REQUEST["busqueda"] : null;


        $sql="SELECT * FROM paginas WHERE titulo LIKE '%$busqueda%' OR descripcion LIKE '%$busqueda%' ";
        $resultado=mysqli_query($con,$sql);
        $totalreg=mysqli_num_rows($resultado);
       
        $regpag=8;

        $pagina= isset($_GET["pagina"])?$_GET["pagina"] : null;
        if (!$pagina) {
            $inicio=0;
            $pagina=1;
        }
        else {
            $inicio=($pagina-1)*$regpag;
        } 

        $totalpag=ceil($totalreg/$regpag);
        $sql="SELECT * FROM paginas WHERE titulo LIKE '%$busqueda%' OR descripcion LIKE '%$busqueda%' LIMIT $regpag offset $inicio";
        $resultado=mysqli_query($con,$sql);

        if (empty($busqueda)) echo "<h2>Intruduzca termino o términos a buscar, por favor.</h2>";
        else{
                if ($totalreg=="0") echo "<h2>No se han encontrado resultados para ".$busqueda."</h2>";
                        else {
                                echo "<h3>Resultados para '".$busqueda."' : &nbsp&nbsp&nbsp".$totalreg."</h3><br/>";
                                ?>
                                <div class="margen2">
                                <?php
                                while($find=mysqli_fetch_array($resultado)){
                                ?>
                                <table>
                                <tr>
                                    <td>
                                    <a href=<?php echo $find["enlace"]; ?>>
                                    <h3>· <?php echo $find["titulo"]; ?></h3></a>
                                    <?php echo $find["descripcion"]; ?>
                                    </td>
                                </tr>
                                </table>
                                <br/><br/>
                                <?php
                                }
                                ?>
                                <ul class="pagination justify-content-center">
                                    <a class="page-link" href="?pagina=<?php echo 1; ?>&busqueda=<?php echo $busqueda; ?> ">|<</a></li>
                                    <a class="page-link" href="?pagina=<?php if($pagina>1) echo $pagina-1; else echo 1 ?>&busqueda=<?php echo $busqueda; ?>"><<</a>
                                    <?php
                                    for ($i=1; $i <= $totalpag; $i++){
                                        if ($i == $pagina){
                                            echo '<li class="page-item active"><a class="page-link">'.$i.'</a></li>';
                                        }
                                        else{
                                            echo '<a class="page-link " href="?pagina='.$i.'&busqueda='.$busqueda.'">'.$i.'</a>';

                                        }
                                    }
                                    ?>
                                    <a class="page-link" href="?pagina=<?php if($pagina<$totalpag) echo $pagina+1; else echo $totalpag ?>&busqueda=<?php echo $busqueda; ?>">>></a>
                                    <a class="page-link" href="?pagina=<?php echo $totalpag; ?>&busqueda=<?php echo $busqueda; ?>">>|</a>
                                </ul>
                        <?php
                        }
        }   
?>
</div>
</div>
</body>
</html>