$artist = @(
    "Justin Beiber",
    "Linkin Park",
    "Avenged Sevenfold"
)


foreach($val in $artist){
    ri -Path "C:\Users\HP\Music\$val" -r -Force
}