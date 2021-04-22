<?php
echo "Enter value: ";
fscanf(STDIN, "%s\n",$page);
switch ($page)
{
    case "Home":
        echo "You selected Home"."\n";
        break;
    case "About":
        echo "You selected About"."\n";
        break;
    case "News": echo "You selected News"."\n";
        break;
    case "Login": echo "You selected Login"."\n";
        break;
    case "Links": echo "You selected Links"."\n";
        break;
}
?>
