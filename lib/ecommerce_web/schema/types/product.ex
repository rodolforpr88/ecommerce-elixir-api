defmodule EcommerceWeb.Schema.Types.Product do
  use Absinthe.Schema.Notation

  object :product do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :sku, non_null(:string)
    field :price, non_null(:float)
    field :description, non_null(:string)
    field :stock, non_null(:integer)
  end

  input_object :create_product_input do
    field :name, non_null(:string)
    field :sku, non_null(:string)
    field :price, non_null(:float)
    field :description, non_null(:string)
    field :stock, non_null(:integer)
  end

  input_object :update_product_input do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :sku, non_null(:string)
    field :price, non_null(:float)
    field :description, non_null(:string)
    field :stock, non_null(:integer)
  end
end
