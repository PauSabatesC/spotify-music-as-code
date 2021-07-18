# Spotify playlist creator


## How to execute it
```sh
source .envrc
docker run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy
```
In another terminal:

Click the link from docker output to authorize spotify.

Copy apikey from docker output to the terraform.tfvars

Run terraform plan

---

- How to work with spotify provider tutorial:

    https://learn.hashicorp.com/tutorials/terraform/spotify-playlist
