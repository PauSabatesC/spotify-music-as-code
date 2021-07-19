terraform {
  required_providers {
    spotify = {
      version = "~> 0.1.6"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

resource "spotify_playlist" "playlist" {
  name        = var.playlist_name
  description = var.playlist_description
  public      = false


  tracks = [
    for song in data.spotify_track.song :
    song.id
  ]
}

data "spotify_track" "song" {
  for_each = toset(local.songs)
  url      = each.key
}



