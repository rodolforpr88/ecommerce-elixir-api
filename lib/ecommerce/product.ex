defmodule Ecommerce.Product do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:name, :sku, :price, :description, :stock]

  schema "products" do
    field :description, :string
    field :name, :string
    field :price, :float
    field :sku, :string
    field :stock, :integer

    timestamps()
  end

  @doc false
  def changeset(attrs) do
    %__MODULE__{}
    |> cast(attrs, @fields)
    |> validate_required(@fields)
  end

  def changeset_update(product, attrs) do
    product
    |> cast(attrs, @fields)
    |> validate_required(@fields)
  end
end
