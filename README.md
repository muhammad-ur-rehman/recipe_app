
# Meal APIs 
#### Technical Test

I have implemented provided APIs and format them into cleaner version.



## Features
3 endpoints are provided which return:

- list of categories
- all meals of a specific category 
- complete details of a specific meal


## Project setup

To succesfuly run this project these are the requirements:
- `Ruby version = 3.0.3p157`
- `Rails version = 6.1.6` 

Once you have completed the requirements and Cloned the project. Navigate to project directory, in project directory
please follow these steps:


Clone the project

```bash
  git clone git@github.com:muhammad-ur-rehman/recipe_app.git
```

Go to the project directory

```bash
  cd recipe_app
```

Install dependencies

```bash
  bundle install
```

Start the server

```bash
  rails s
```
## API endpoints

#### Get all categories

```http
  GET /categories
```


#### Get all meals of a category

```http
  GET /meals?category=${category_name}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `category_name`      | `string` | **Required**. category of meals to fetch all meals.|


#### Get details of spcific meal

```http
  GET /meals/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. ID of meal to fetch details |

## Swagger API Documentation

To test endpoints and for documentation Swagger is implemented to access Swagger you can use following endpoint.

```http
  GET /api-docs/index.html
```
### Auther 
- [@muhammad-ur-rehman](https://www.github.com/muhammad-ur-rehman)
