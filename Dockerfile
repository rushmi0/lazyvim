FROM fedora:latest

RUN dnf install -y \
    neovim \
    python3-neovim \
    git \
    curl \
    gcc \
    clang \
    make \
    zig \
    nodejs \
    npm && \
    dnf clean all

RUN mkdir -p /root/.config/nvim
COPY . /root/.config/nvim
WORKDIR /root

CMD ["nvim"]