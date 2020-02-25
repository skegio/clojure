FROM skegio/base:18.04

RUN apt-get update && apt-get install openjdk-8-jdk-headless -y

# install lein
RUN curl -fsSL https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > \
            /usr/local/bin/lein && \
            chmod 0755 /usr/local/bin/lein
RUN curl -fsSL https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh > \
            /usr/local/bin/boot && \
            chmod 0755 /usr/local/bin/boot

# install clj/clojure
RUN wget https://download.clojure.org/install/linux-install-1.10.0.510.sh -O linux-install-1.10.0.510.sh && \
    chmod +x linux-install-1.10.0.510.sh && \
    ./linux-install-1.10.0.510.sh

RUN apt-get install rlwrap -y
