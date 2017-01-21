<?php
// ����������������
$a[]="Anna";
$a[]="Brittany";
$a[]="Cinderella";
$a[]="Diana";
$a[]="Eva";
$a[]="Fiona";
$a[]="Gunda";
$a[]="Hege";
$a[]="Inga";
$a[]="Johanna";
$a[]="Kitty";
$a[]="Linda";
$a[]="Nina";
$a[]="Ophelia";
$a[]="Petunia";
$a[]="Amanda";
$a[]="Raquel";
$a[]="Cindy";
$a[]="Doris";
$a[]="Eve";
$a[]="Evita";
$a[]="Sunniva";
$a[]="Tove";
$a[]="Unni";
$a[]="Violet";
$a[]="Liza";
$a[]="Elizabeth";
$a[]="Ellen";
$a[]="Wenche";
$a[]="Vicky";

//�������� URL �� q ����
$q=$_GET["q"];

//���� q ���� 0�������������е�������ʾ
if (strlen($q) > 0){
    $hint="";
    for($i=0; $i<count($a); $i++){
        if (strtolower($q)==strtolower(substr($a[$i],0,strlen($q)))) {
            if ($hint==""){
                $hint=$a[$i];
            }
            else{
                $hint=$hint." , ".$a[$i];
            }
        }
    }
}

// ����δ�ҵ���ʾ��������������Ϊ "no suggestion"
// ��������Ϊ��ȷ��ֵ
if ($hint == ""){
    $response="no suggestion";
}
else{
    $response=$hint;
}

//������Ӧ
echo $response;
?>