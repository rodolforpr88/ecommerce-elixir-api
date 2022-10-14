defmodule Ecommerce.Products.Create do
  alias Ecommerce.{Product, Repo}

  def call(params) do
    params
    |> Product.changeset()
    |> Repo.insert()
  end
end
