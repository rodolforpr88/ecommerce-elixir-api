defmodule Ecommerce.Products.Update do
  alias Ecommerce.{Product, Repo}

  def call(%{id: id} = params) do
    case Repo.get(Product, id) do
      nil -> {:error, "Product not found!"}
      product -> update_product(product, params)
    end
  end

  def update_product(%Product{} = product, attrs) do
    product
    |> Product.changeset_update(attrs)
    |> Repo.update()
  end
end
