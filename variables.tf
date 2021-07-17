variable "spotify_api_key" {
  type = string
}

variable "playlist_name" {
  type    = string
  default = "French touch electronic essentials"
}

variable "playlist_description" {
  type    = string
  default = "Some of the best 'french touch' music style songs out there. This playlist can be replicated anytime thanks to Terraform. Music as code!"
}
