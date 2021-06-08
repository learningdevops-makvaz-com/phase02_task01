<?php
echo 'toastname='.gethostname().'</br>';
if (getenv('VERSION') == null) {
    echo '$VERSION not defo not set';
} else {
    echo "$VERSION=".getenv('VERSION');
}
?>
