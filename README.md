# Blogging platform (made with Spring Boot)
## Live Demo (runs on HerokuApp)
[https://damp-cliffs-40299.herokuapp.com/]

## About the project
Application made using:\
 <i><b>Java 8,\
  Spring Boot v2.2.6,\
   Spring Web,\
    Spring Data JPA,\
     Spring Security,\
      H2-in-memory-database,\
       Lombok,\
       Thymeleaf\
        Maven</b></i>.
 
Unregistered/anonymous blog users can view all posts and comments;\
Registered and logged in users (Authenticated users) can add new posts, view only their own posts, edit or delete them (CRUD functionality);\
Validation for creating new posts, body must not be empty, title must have length of 7 by default and other;\
Spring Security authentication and authorization rules ensures that users only able to edit or delete their own posts;\
Front-end made using Thymeleaf templates.


## How to set up the application

Open terminal and use git clone command to download the remote GitHub repository to your computer:
```
[git clone https://github.com/LabhamGupta/githubSpringBoot]
```
It will create a new folder with same name as GitHub repository "spring-boot-blog-app". All the project files and git data will be cloned into it. After cloning complete change directories into that new folder:
```
cd spring-boot-blog-app
```

## How to use

To launch the application run this command (uses maven wrapper):
```
$ ./mvnw clean spring-boot:run
```
Or using your installed maven version:
```
$ mvn clean spring-boot:run
```
<b>For interacting with application one can use <i>a browser</i></b>.
By default, application uses Tomcat which listening on port: 8080,
means you can reach it if run on a local machine by hitting URL http://localhost:8080.

