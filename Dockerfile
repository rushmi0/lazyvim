FROM fedora:40

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
    npm \
    tree \
    fontconfig \
    unzip && \
    dnf clean all

RUN mkdir -p /root/.local/share/fonts && \
    curl -fLo /root/.local/share/fonts/JetBrainsMono.zip \
    https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip && \
    unzip /root/.local/share/fonts/JetBrainsMono.zip -d /root/.local/share/fonts/ && \
    rm /root/.local/share/fonts/JetBrainsMono.zip && \
    fc-cache -fv


RUN mkdir -p /root/.config/nvim
COPY . /root/.config/nvim
WORKDIR /root

CMD ["nvim"]