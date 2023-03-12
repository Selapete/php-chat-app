<?php
    session_start();
    include_once "config.php";

    $fname = mysqli_real_escape_string($conn, $_POST['fname']);
    $lname = mysqli_real_escape_string($conn, $_POST['lname']);
    $uname = mysqli_real_escape_string($conn, $_POST['username']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    if (!empty($fname) && !empty($lname) && !empty($uname) && !empty($email) && !empty($password)) {
        // Valid email or not
        if (filter_var($email, FILTER_VALIDATE_EMAIL)) { //if email is valid
            $sql = mysqli_query($conn, "SELECT email FROM users WHERE email ='{$email}'");
            if(mysqli_num_rows($sql) > 0){
                echo "$email -This email already exist!";
            }else{
                $sql10 = mysqli_query($conn, "SELECT email FROM users WHERE uname ='{$uname}'");
                if (mysqli_num_rows($sql10) > 0) {
                    echo "$uname -Useranme already exist!, please choose another username";
                } else {  
                    if (strlen($password) < 8) {
                        echo "Your password less than 8 characters choose a stronger password combination";
                    } else {
                    if (isset($_FILES['image'])) {
                        $img_name = $_FILES['image']['name'];
                        // $img_type = $_FILES['image']['type'];
                        $tmp_name = $_FILES['image']['tmp_name'];

                        $img_explode = explode('.', $img_name);
                        $img_ext = end($img_explode);

                        $extention = ['png','jpeg','jpg','svg','gif'];
                        if (in_array($img_ext, $extention) === true) {
                            $time =time();

                            $new_img_name = $time.$img_name;
                            
                            if ( move_uploaded_file($tmp_name, "../uploads/".$new_img_name)){
                                $status = "Active Now";
                                $random_id = rand(time(), 10000000); 

                                $sql2 = mysqli_query($conn, "INSERT INTO users (unique_id, fname, lname, uname, email, password, img, status) VALUES ({$random_id}, '{$fname}', '{$lname}', '{$uname}', '{$email}', '{$password}', '{$new_img_name}', '{$status}')");

                                if($sql2){
                                $sql3 = mysqli_query($conn, "SELECT * FROM users WHERE email = '{$email}'");
                                if (mysqli_num_rows($sql3) > 0) {
                                        $row = mysqli_fetch_assoc($sql3);
                                        $_SESSION['unique_id'] = $row['unique_id'];
                                        echo "Success!";
                                }
                                }else{
                                    echo "Something went wrong";
                                }
                            }
                        } else {
                            echo "Please upload an Image file - jpeg, jpg, png, svg, gif!";
                        }
                        
                    } else {
                        echo "Please upload an Image file";
                    }
                } 
              }
            }
            } else {
                echo "$email - This is not a valid email!";
            }
        }else{
            echo "All input fields are required";
        }
?>    