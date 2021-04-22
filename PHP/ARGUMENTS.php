<?php
function howdy($lang) {
if ( $lang == 'vn' ) return "Xin chao";
if ( $lang == 'fr' ) return "Bonjour";
return "Hello";
}
print howdy('vn') . " Glenn\n";
print howdy('fr') . " Sally\n";
?>