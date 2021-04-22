<?php
function howdy($lang='vn') {
if ( $lang == 'vn' ) return "Xin chao";
if ( $lang == 'fr' ) return "Bonjour";
return "Hello";
}
print howdy() . " Glenn\n";
print howdy('fr') . " Sally\n";
?>