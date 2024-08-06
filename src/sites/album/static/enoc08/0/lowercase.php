<?

$dir = ".";
$dh  = opendir($dir);
while (false !== ($filename = readdir($dh))) {
   $files[] = $filename;
}

foreach($files as $key => $elm) {
//  print "$key => $elm\n";
  if ( $elm[0] != "." )
    rename($elm, strtolower($elm) );
}

?>