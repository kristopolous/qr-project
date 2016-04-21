<?
$_POST['date'] = date(DATE_RFC2822);
file_put_contents("stickers.txt", json_encode($_POST), FILE_APPEND);
header("Location: /?show=thanks");
?>
