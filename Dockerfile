FROM jimador/docker-jdk-8-maven-node

# Adicionando proxies para acesso interno
RUN echo "Acquire::http::proxy \"http://10.239.68.1:3128/\";\n\
Acquire::ftp::proxy \"ftp://10.239.68.1:3128/\";\n\
Acquire::https::proxy \"http://10.239.68.1:3128/\";" > /etc/apt/apt.conf

RUN export http_proxy=\"http://10.239.68.1:3128/\"
RUN export htts_proxy=\"http://10.239.68.1:3128/\"