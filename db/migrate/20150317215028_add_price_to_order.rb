class AddPriceToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :price, :string
    add_column :orders, :product, :string
  end
end
