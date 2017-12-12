FROM atlassian/default-image
RUN rm -rf /bin/versions && \
    ( curl -sL https://deb.nodesource.com/setup_7.x | bash - ) && \
    apt-get update && \
    apt-get install -y \
        nodejs \
        python-pip && \
    npm install -g cordova ionic && \
    pip install awscli && \
    rm -rf /var/lib/apt/lists/*
