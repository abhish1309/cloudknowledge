FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
# my second commit
# my third commit from jenkins
# from git repo
# fourth comment in line
# fifth comment in line
# ansible-playbook command was wrong, corrected
# container was schedule but need to verify again
# updated ansible inventory & docker.yml file
