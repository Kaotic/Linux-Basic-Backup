<?php

//Add your IP
if($_SERVER['REMOTE_ADDR'] == 10.3.4.65){

//Add hostname for resolve IP and comment "Add your IP" and uncomment this.
//if($_SERVER['REMOTE_ADDR'] == gethostbyname("example.noip.me")){
    $target = '/var/cnd/backups/33d91/';
    $directories = scandir($target);

    echo "<h4>Backups list:</h4>";
    foreach($directories as $value)
    {
        if(!is_dir($target.$value))
        {
            echo "<a href=\"/backups/33d91/$value\">$value</a><br />";
        }
    }
}else{
    header('HTTP/1.0 403 Forbidden');
    echo "403 Forbidden";
}
