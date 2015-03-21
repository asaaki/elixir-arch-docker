FROM nfnty/arch-mini:latest

ENV LANG en_US.UTF-8

RUN pacman -Sy --needed --noconfirm \
      binutils \
      sed \
      make \
      curl \
      git \
      libunistring \
      elixir \
    && (yes | pacman -Scc)

RUN mix local.hex --force && mix local.rebar --force

CMD ["/bin/bash"]
