defmodule Ecommerce.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :sku, :string
      add :price, :float
      add :description, :string
      add :stock, :integer

      timestamps()
    end
  end
end
