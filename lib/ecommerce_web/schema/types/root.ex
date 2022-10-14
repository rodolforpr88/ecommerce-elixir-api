defmodule EcommerceWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias EcommerceWeb.Resolvers.Product, as: ProductResolver

  import_types EcommerceWeb.Schema.Types.Product

  object :root_query do
    field :get_product, type: :product do
      arg :id, non_null(:id)

      resolve &ProductResolver.get/2
    end

    field :delete_product, type: :product do
      arg :id, non_null(:id)

      resolve &ProductResolver.delete/2
    end
  end

  object :root_mutation do
    field :create_product, type: :product do
      arg :input, non_null(:create_product_input)

      resolve &ProductResolver.create/2
    end

    field :update_product, type: :product do
      arg :input, non_null(:update_product_input)

      resolve &ProductResolver.update/2
    end
  end
end
