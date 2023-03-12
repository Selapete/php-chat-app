<?php
    $conn = mysqli_connect("localhost", "root", "", "motaf_chat");
    if ($conn) {
        echo "".mysqli_connect_error();
    }
?>