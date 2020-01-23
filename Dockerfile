ARG WRAPPER=yay
FROM bverhagen/pacman-aur-wrapper:${WRAPPER}

# Add a user to use in the docker container
RUN groupadd -g 42 awesome && useradd -r -u 42 --create-home -g awesome awesome

# Give user root access via sudo
RUN echo "awesome ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Get rid of annoying "sudo: setrlimit(RLIMIT_CORE): Operation not permitted" messages
RUN echo "Set disable_coredump false" >> /etc/sudo.conf

RUN mkdir --parents /.cache && sudo chown awesome:awesome /.cache/

USER awesome
ENV EDITOR false
