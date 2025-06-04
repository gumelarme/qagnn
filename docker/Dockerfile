FROM vastai/pytorch:2.5.1-cuda-12.4.1-py312-ipv2

RUN source /venv/main/bin/activate && \
    pip install --no-cache-dir --pre \
      marimo \
      nltk \
      spacy \
      transformers \
      torch_geometric \
      pyg_lib \
      torch_scatter \
      torch_sparse \
      torch_cluster \
      torch_spline_conv \
      -f https://data.pyg.org/whl/torch-2.5.0+cu124.html

COPY marimo.sh /opt/supervisor-scripts/marimo.sh
COPY marimo.conf /etc/supervisor/conf.d/marimo.conf

RUN apt-get update && \
    apt install -y\
    aria2 \
    nix-bin \
    fzf \
    ripgrep \
    fd-find && \
    ln -s $(which fdfind) /bin/fd  && \

    #  Install Yazi
    wget https://github.com/sxyazi/yazi/releases/download/v25.5.28/yazi-x86_64-unknown-linux-gnu.zip -O /workspace/yazi.zip && \
    mkdir /workspace/yazi && unzip /workspace/yazi.zip -d /workspace/yazi && \
    ln -s /workspace/yazi/yazi /bin/yazi

ENTRYPOINT ["/opt/instance-tools/bin/entrypoint.sh"]
