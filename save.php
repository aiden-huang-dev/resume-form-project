<?php
// 連線到 MySQL
$conn = new mysqli("localhost", "root", "", "resume_db");
$conn->set_charset("utf8");

if ($conn->connect_error) {
    die("連線失敗：" . $conn->connect_error);
}

// 1. 接收表單資料
$id_number      = $_POST['id_number']      ?? '';
$birth_place    = $_POST['birth_place']    ?? '';
$birthday       = $_POST['birthday']       ?? '';
$blood_type     = $_POST['blood']          ?? '';
$contact_zip    = $_POST['contact_zip']    ?? '';
$contact_addr   = $_POST['contact_addr']   ?? '';
$home_zip       = $_POST['home_zip']       ?? '';
$home_addr      = $_POST['home_addr']      ?? '';
$phone_home     = $_POST['phone_home']     ?? '';
$phone_mobile   = $_POST['phone_mobile']   ?? '';
$email          = $_POST['email']          ?? '';
$military_status= $_POST['military_status']?? '';
$talent         = $_POST['talent']         ?? '';
$interest       = $_POST['interest']       ?? '';
$self_past      = $_POST['self_past']      ?? '';
$self_now       = $_POST['self_now']       ?? '';
$self_future    = $_POST['self_future']    ?? '';
$self_adj       = $_POST['self_adj']       ?? '';

// 2. 組 SQL 語法（不包含 id，因為是 AUTO_INCREMENT）
$sql = "INSERT INTO user_info
    (id_number, birth_place, birthday, blood_type,
     contact_zip, contact_addr, home_zip, home_addr,
     phone_home, phone_mobile, email, military_status,
     talent, interest, self_past, self_now, self_future, self_adj)
    VALUES
    ('$id_number', '$birth_place', '$birthday', '$blood_type',
     '$contact_zip', '$contact_addr', '$home_zip', '$home_addr',
     '$phone_home', '$phone_mobile', '$email', '$military_status',
     '$talent', '$interest', '$self_past', '$self_now', '$self_future', '$self_adj')";

// 3. 執行並回應結果
if ($conn->query($sql)) {
    echo "資料成功寫入！";
} else {
    echo "寫入失敗：" . $conn->error;
}

$conn->close();
?>
