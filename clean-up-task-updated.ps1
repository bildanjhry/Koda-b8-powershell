$artist = @(
    "Justin Beiber",
    "Linkin Park",
    "Avenged Sevenfold"
)
$path = "C:\Users\HP\Videos"


foreach($val in $artist){
    ri -Path "$path\$val" -r -Force
}