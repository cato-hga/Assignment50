class AddClientRefToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :client, index: true
    add_foreign_key :orders, :clients
  end
end
