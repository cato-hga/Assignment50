class AddStreetToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :street, :string
    add_column :addresses, :city, :string
  end
end
