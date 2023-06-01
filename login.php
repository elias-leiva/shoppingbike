<?php

include 'config.php';
session_start();

if(isset($_POST['submit'])){

   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass = mysqli_real_escape_string($conn, md5($_POST['password']));

   $select = mysqli_query($conn, "SELECT * FROM `user_form` WHERE email = '$email' AND password = '$pass'") or die('query failed');

   if(mysqli_num_rows($select) > 0){
      $row = mysqli_fetch_assoc($select);
      $_SESSION['user_id'] = $row['id'];
      header('location:index.php');
   }else{
      $message[] = 'Correo o Contraseña Incorrectos!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Bienvenido a Shopping Bike</title>
   <link rel="stylesheet" href="css/style.css">
   <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>
</head>
<body>

<header>
        <div class="overlay"></div>
        <div class="absolute">
            <h1>Bienvenido a Shopping Bike</h1>
        </div>
        <video onloadedmetadata="this.muted=true" autoplay loop>
            <source src="video.mp4">
        </video>
</header>

<?php
if(isset($message)){
   foreach($message as $message){
      echo '<div class="message" onclick="this.remove();">'.$message.'</div>';
   }
}
?>
   
<div class="form-container">
   <form action="" method="post">
      <h3>Iniciar Sesion</h3>
      <input type="email" name="email" required placeholder="Ingrese su email" class="box">
      <input type="password" name="password" required placeholder="Ingrese su contraseña" class="box">
      <input type="submit" name="submit" class="btn" value="Iniciar Sesion">
      <p>No tienes una cuenta? <a href="register.php">Registrarme</a></p>
   </form>
</div>
<footer class="pie-pagina">
        <div class="grupo-1">
            <div class="box">
                <figure>
                    <a href="#">
                        <img src="images/logo.png">
                    </a>
                </figure>
            </div>
            <div class="box">
                <h2>SOBRE NOSOTROS</h2>
                <p>Somos el shopping de las bicicletas.</p>
                <p>Podras encontrarte con una gran variedad de productos.</p>
                <p>Como bicicletas de todo tipo y mas! </p>
            </div>
            <div class="box">
                <h2>SIGUENOS</h2>
                <div class="red-social">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-youtube"></a>
                </div>
            </div>
        </div>
        <div class="grupo-2">
            <small>&copy; 2022 <b>@eliasleiiva</b> - Todos los Derechos Reservados.</small>
        </div>
    </footer>
</body>
</html>