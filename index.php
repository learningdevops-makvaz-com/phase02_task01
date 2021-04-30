<?php
echo 'hostname='.gethostname().'</br>';
if (getenv('VERSION') == null) {
    echo '$VERSION not set';
} else {
    echo "$VERSION=".getenv('VERSION');
}
?>
