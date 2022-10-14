defmodule Ecommerce.Products.Delete do
  alias Ecommerce.{Product, Repo}

  def call(id) do
    case Repo.get(Product, id) do
      nil -> {:error, "Product not found!"}
      product -> delete_product(product)
    end
  end

  def delete_product(product) do
    product
    |> Repo.delete()

    {:ok, %{message: "Product Removed!"}}
  end
end
