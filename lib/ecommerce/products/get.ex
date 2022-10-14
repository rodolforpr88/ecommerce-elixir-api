defmodule Ecommerce.Products.Get do
  alias Ecommerce.{Product, Repo}

  def call(id) do
    case Repo.get(Product, id) do
      nil -> {:error, "Product not found"}
      product -> {:ok, product}
    end
  end
end
