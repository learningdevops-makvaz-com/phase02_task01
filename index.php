<html>
<head>
<title> My PHP website </title> 
</head>
<body>
<h1> 
The site works :)
</h1>
<p>
<?php
echo 'hostname='.gethostname().'</br>';
if (getenv('VERSION') == null) {
    echo '$VERSION not set';
} else {
    echo "$VERSION=".getenv('VERSION');
}
?>
</p>
</body>
</html>
