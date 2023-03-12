<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Motaf Chat</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"/>
</head>
<body>
    <div class="wrapper">
        <section class="form login">
            <header>Motaf Chat App</header>
            <form action="#">
                <div class="error-txt"></div>
                <!-- <div class="name-details">
                    <div class="field input">
                        <label>First Name</label>
                        <input type="text" placeholder="First Name">
                    </div> 
                    <div class="field input">
                        <label>Last Name</label>
                        <input type="text" placeholder="Last Name">
                    </div>
                </div> -->
                <div class="field input">
                    <label>Email Address</label>
                    <input type="text" name="email" value="" placeholder="Enter your email">
                </div>
                <div class="field input">
                    <label>Password</label>
                    <input type="password" name="password" value="" placeholder="Enter your password">
                    <i class="fa fa-eye"></i>
                </div>
                <!-- <div class="field image">
                    <label>Select Image</label>
                    <input type="file">
                </div> -->
                <div class="field button">
                    <input type="submit" value="Continue to chat">
                </div>
            </form>
            <div class="link">Not yet signed up <a href="index.php">Signup now</a></div>
        </section>
    </div> 
    <script src="js/pass-show-hide.js"></script>
    <script src="js/login.js"></script>
</body>
</html>