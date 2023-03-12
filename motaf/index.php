<?php 
    session_start();
    if (isset($_SESSION['unique_id'])) {
        header("location: users.php");
       
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Motaf Chat</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"/>
    <link href="images/favicon.png" rel="shortcut icon">

</head>
<body>
    <div class="wrapper">
        <section class="form signup">
            <header> Motaf Chat App</header>
            <form action="#" enctype="multipart/form-data">
                <div class="error-txt"></div>
                <div class="name-details">
                    <div class="field input">
                        <label>First Name</label>
                        <input type="text" name="fname" placeholder="First Name" value="" required>
                    </div>
                    <div class="field input">
                        <label>Last Name</label>
                        <input type="text" name="lname" placeholder="Last Name" value="" required>
                    </div>
                </div>
                <div class="field input">
                    <label>Choose Username</label>
                    <input type="text" name="username" placeholder="Username" value="" required>
                </div>
                <div class="field input">
                    <label>Email Address</label>
                    <input type="text" name="email" placeholder="Enter your email" value="" required>
                </div>
                <div class="field input">
                    <label>Password</label>
                    <input type="password" name="password" placeholder="Enter new password" value="">
                     <i class="fa fa-eye"></i>
                </div>
                <div class="field image">
                    <label>Upload Image File</label>
                    <input type="file"  name="image" value="" required>
                </div>
                <div class="field button">
                    <input type="submit" value="Continue to chat">
                </div>
            </form>
            <div class="link">Already signed up <a href="login.php">Login now</a></div>
        </section>
    </div> 
    <script src="js/pass-show-hide.js"></script> 
    <script src="js/signup.js"></script>
</body>
</html> 