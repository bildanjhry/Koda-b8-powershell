$songs = @(@(), @(), @())
$artist = @("Justin Beiber", "Linkin Park", "Avenged Sevenfold")
$songs[0] = @(
$artist[0]+ " - " +"u smile"
$artist[0]+ " - " +"one less loner"
$artist[0]+ " - " +"somebody to love"
$artist[0]+ " - " +"eeniee meenie"
$artist[0]+ " - " +"baby")

$songs[1] = @(
$artist[1]+ " - " +"one more light"
$artist[1]+ " - " +"peppercut"
$artist[1]+ " - " +"in the end"
$artist[1]+ " - " +"giving up"
$artist[1]+ " - " +"somewhere i belong")

$songs[2] = @(
$artist[2]+ " - " +"this means war"
$artist[2]+ " - " +"hail to the king"
$artist[2]+ " - " +"afterlife"
$artist[2]+ " - " +"the stage"
$artist[2]+ " - " +"waking the fallen")


foreach ( $name in $artist ) {
    ni -Path "C:\Users\HP\Music" -Name $name -ItemType "Directory"
}

$curr = 0
foreach ( $songName in $songs ) {
    foreach( $val in $songName) {
        $file = $val + ".mp3"
        ni -Path "C:\Users\HP\Music" -Name $file -ItemType "File"
        mi -Path "C:\Users\HP\Music\$file" -Destination "C:\Users\HP\Music\$($artist[$curr])"
    }
    $curr++
}

