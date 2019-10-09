awesome-aur-wrapper
===================
AUR wrapper based on https://github.com/bverhagen/pacman-aur-wrapper with a preconfigured non-root user called 'awesome'

## User details
*home directory*: /home/awesome
*userid*: 42
*groupid*: 42
*sudo rights*: Yes, no password required

## Selecting the desired AUR wrapper
1. Check the tags of https://github.com/bverhagen/pacman-aur-wrapper for a list of supported AUR wrappers and their exact naming
1. Build the image using the chosen AUR wrapper as the value of the _WRAPPER_ argument:
    ```bash
    docker build -t awesome-aur-wrapper --build-arg WRAPPER=<wrapper>
    ```
