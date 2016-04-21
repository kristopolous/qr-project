<?
$_POST['date'] = date(DATE_RFC2822);
file_put_contents("stickers.txt", json_encode($_POST) . "\n", FILE_APPEND);
header("Location: /?show=thanks");
?>
