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
    data.spotify_track.lady_hear_me_tonight.id,
    data.spotify_track.baby_im_yours.id,
    data.spotify_track.if_i_ever_feel_better.id
  ]
}





