data "spotify_track" "song" {
  for_each = toset(var.song_list)

  url = each.key
}


variable "song_list" {
  type = list(string)
  default = [
    "https://open.spotify.com/track/4X4WSs1gTF7UnUA3H99cQX?si=4d30521b64f647cc",
    "https://open.spotify.com/track/4kO7mrAPfqIrsKwUOK5BFx?si=c29f4c540cb447c3",
    "https://open.spotify.com/track/3AA8xNhDC0MpqwkGX3EP5V?si=dce586457f424594",
    "https://open.spotify.com/track/4XHjt7mlKGwiwPPD1owV7w?si=553df758684e4204",
    "https://open.spotify.com/track/106X4facOVhIkDR3cLBCym?si=40531f51dc764d7e",
  ]
}
