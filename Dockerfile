FROM ubuntu:22.04

# Set environment
ENV DEBIAN_FRONTEND=noninteractive

# Update and install dependencies
RUN apt-get update && \
    apt-get install -y software-properties-common wget git curl \
    build-essential ca-certificates locales \
    x11-apps xauth x11-utils x11vnc xvfb fluxbox xfce4 \
    texlive-full texlive-latex-extra texlive-fonts-recommended \
    texstudio vim nano sudo

# Set up locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

# Create user
RUN useradd -m -s /bin/bash latexuser && \
    echo "latexuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER latexuser
WORKDIR /home/latexuser

# Optional: install a few helpful tools and LaTeX packages
RUN mkdir -p ~/projects && \
    texhash

CMD ["bash"]
