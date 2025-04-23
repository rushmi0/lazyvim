FROM fedora:40

RUN dnf install -y \
    neovim \
    python3-neovim \
    webkit2gtk4.1-devel \
    openssl-devel \
    wget \
    file \
    libappindicator-gtk3-devel \
    librsvg2-devel \
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

RUN dnf group install -y "c-development"

# install: Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
    source $HOME/.cargo/env && \
    rustup update

# install: Liberica JDK 21
RUN curl -L -O https://download.bell-sw.com/java/21.0.7+9/bellsoft-jdk21.0.7+9-linux-amd64.rpm && \
    dnf install -y bellsoft-jdk21.0.7+9-linux-amd64.rpm && \
    rm bellsoft-jdk21.0.7+9-linux-amd64.rpm

RUN mkdir -p /root/.config/nvim
COPY . /root/.config/nvim
WORKDIR /root

CMD ["nvim"]