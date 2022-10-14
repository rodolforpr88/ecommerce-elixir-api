defmodule EcommerceWeb.Resolvers.Product do
  alias Ecommerce.Products.{Create, Get, Update, Delete}
  # metodos do absinthe sempre vai receber 2 params
  # 1 params do graphql manda para nós
  # 2 context
  def create(%{input: params}, _context), do: Create.call(params)
  def get(%{id: id}, _context), do: Get.call(id)
  def update(%{input: params}, _context), do: Update.call(params)
  def delete(%{id: id}, _context), do: Delete.call(id)
end
