# E-commerce Back End

![License Badge](https://img.shields.io/badge/license-MIT-blue)

## Description

This is the back-end for an e-commerce website. It provides the server and API routes for managing categories, products, and tags in an e-commerce system. The application is built using Express.js and Sequelize, and it interacts with a MySQL database.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Database Setup](#database-setup)
- [API Routes](#api-routes)
- [Contributing](#contributing)
- [License](#license)
- [Questions](#questions)

## Installation

To run this application, follow these steps:

1. Clone the repository to your local machine.

2. Run `npm install` to install the required dependencies.

3. Create a `.env` file in the root directory of the project and add your MySQL database configuration. Use the following format:


4. Run the SQL schema file to create the database and tables. Use the following command:


5. Seed the database with test data using the following command:


6. Start the server with the command:


## Usage

- Open your API testing tool (e.g., Insomnia or Postman).

- Use the following API routes to interact with the application:

- Categories:
 - GET all categories: `/api/categories`
 - GET a single category by ID: `/api/categories/:id`
 - POST a new category: `/api/categories`
 - PUT (update) a category by ID: `/api/categories/:id`
 - DELETE a category by ID: `/api/categories/:id`

- Products (similar routes as Categories):
 - GET all products: `/api/products`
 - GET a single product by ID: `/api/products/:id`
 - POST a new product: `/api/products`
 - PUT (update) a product by ID: `/api/products/:id`
 - DELETE a product by ID: `/api/products/:id`

- Tags (similar routes as Categories):
 - GET all tags: `/api/tags`
 - GET a single tag by ID: `/api/tags/:id`
 - POST a new tag: `/api/tags`
 - PUT (update) a tag by ID: `/api/tags/:id`
 - DELETE a tag by ID: `/api/tags/:id`

- Test each route by sending the appropriate HTTP requests (GET, POST, PUT, DELETE) to the specified endpoints.

## Database Setup

The SQL schema file `db/schema.sql` contains the database schema and table definitions for categories, products, tags, and the many-to-many relationship between products and tags. Make sure to run this file to create the database structure.

## API Routes

The API routes are defined in the following files:

- `routes/category-routes.js`: Routes for categories
- `routes/product-routes.js`: Routes for products
- `routes/tag-routes.js`: Routes for tags

Please refer to these files for more details on route implementation.

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

1. Fork the project.
2. Create your feature branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Questions

If you have any questions or need further assistance, please feel free to contact me:

- GitHub: [YourGitHubUsername](https://github.com/YourGitHubUsername)
- Email: your.email@example.com
