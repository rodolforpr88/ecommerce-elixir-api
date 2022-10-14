# Ecommerce

To build the docker's `postgres` and `phoenix`

  * `docker compose build`

To create the database and run the migrations

  * `docker compose run --rm app mix ecto.create`
  * `docker compose run --rm app mix ecto.migrate`

Now you can visit [`http://localhost:4000/api/graphiql`](http://localhost:4000/api/graphiql) from your browser and test the Graphql below.

Create a new product
```graphql
  mutation{
    createProduct(input: {name: "Some Name", description: "Some Description", price: 123.99, sku: "Some SKU", stock: 44})
    {
      # fields available to receive
      id
      name
      price
      sku
      stock
      description
    }
  }
```

Show a specific product by `ID`
```graphql
query{
    createProduct(id: 1)
    {
      # fields available to receive
      id
      name
      price
      sku
      stock
      description
    }
  }
```

Update a specific product by `ID` and `input` are the fields that will change.
```graphql
mutation{
  updateProduct(input: {id: 1, name: "New Name", description: "New Description", price: 321.99, sku: "New SKU", stock: 88})
  {
    # fields available to receive
    id
    name
    price
    sku
    stock
    description
  }
}
```

Delete a specific product by `ID`.
```graphql
query{
  deleteProduct(id: 1) {
    # fields available to receive
    id
    name
    price
    sku
    stock
    description
  } 
}
```
## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
  * Hex: https://hex.pm/
  * Absinthe/Absinthe-Phoenix: https://absinthe-graphql.org/
