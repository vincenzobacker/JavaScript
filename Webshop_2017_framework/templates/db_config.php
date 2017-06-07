<?php
$db = array(
'host' => 'localhost',
'dbname' => 'webshop2017',
'user'=> 'root',
'pass'=> '',
);

try{
    $db =new PDO('mysql:host='.$db['host'].';dbname='.$db['host'].';dbname='.$db['dbname'],
     $db['user'], $db['pass']);
     $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
     $db->query("SET SESSION sql_mode='ANSI,ONLY_FULL_GROUP_BY'");
}
catch(PDOExceptioon $e)
{
    $sMsmg = '<p>
            regelnummer: '.$e->getLine ().'<br/>
            bestand: '.$e->getLine().'<br/>
            Foutmelding: '.$e->getmessage().'
        </p>';

    trigger_error($sMsg);
}
?>
