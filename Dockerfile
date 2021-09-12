FROM java:8  
COPY . /var/www/java  
WORKDIR /var/www/java  
RUN mvn package 
CMD ["java", "Hello"]  
