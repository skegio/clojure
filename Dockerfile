FROM skegio/base:18.04

RUN apt-get update && apt-get install openjdk-11-jdk-headless -y

# install lein
RUN curl -fsSL https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > \
            /usr/local/bin/lein && \
            chmod 0755 /usr/local/bin/lein
RUN curl -fsSL https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh > \
            /usr/local/bin/boot && \
            chmod 0755 /usr/local/bin/boot

# install clj/clojure
ENV CLOJURE_VERSION=1.11.1.1155
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh -O linux-install.sh && \
    chmod +x linux-install.sh && \
    ./linux-install.sh

RUN apt-get install rlwrap -y
