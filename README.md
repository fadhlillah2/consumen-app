# consumen-app

This is a Java Spring Boot application that provides a RESTful API for managing consumen.

### Prerequisites
- Java 11
- Spring Boot 2.7.4
- postgresql 14
- thymeleaf
- bootstrap 4.3.1
### Installation
To run the project, follow these steps:

Clone the repository
Create a postgresql database named consumen_db
Update the database connection properties in application.properties
Run the project using ./mvnw spring-boot:run
### Data Model
The data model for this CRUD application consists of a single entity: konsumen. The Movie entity has the following properties:

id: The unique identifier for the movie
name: The name of the user/consumen
alamat: The address of the user/consumen
kota: The city of the user/consumen
provinsi: The province of the user/consumen
tgl_registrasi: The date and time when the movie was created
enabled: Determine is enable or not
### API Endpoints
The following API endpoints are available:

- GET /users: Returns a list of all users
- GET /users/getByName: Returns the movie with the specified regex name
- GET /users/new: show new form when add user
- POST /users/save: Creates a new user
- GET users/edit/{id}: Updates the user with the specified ID
- DELETE users/delete/{id}: Deletes the user with the specified ID
### Authentication and Authorization
This application does not require authentication or authorization to access the API endpoints.

### Testing
This application includes unit tests for the MovieController and MovieServiceImpl classes. To run the tests, execute ./mvnw test.

### Deployment
To deploy this application to a production environment, you can create a Docker image and deploy it to a container orchestration platform like Kubernetes. But in this case, the usage of docker is (still developing).

### Contributing
If you would like to contribute to this project, please create a pull request with your changes. Please ensure that all tests pass before submitting the pull request.

License
This project is licensed under the MIT License. See the LICENSE file for details
