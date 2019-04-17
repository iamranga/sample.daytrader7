FROM openjdk:8-jre

ENV PATH /usr/local/tomee/bin:$PATH
RUN mkdir -p /usr/local/tomee


WORKDIR /usr/local/tomee


COPY ./tomee/ /usr/local/tomee/
COPY daytrader-ee7/target/*.ear /usr/local/tomee/apps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
