class AddTransactionsIdToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :invoice, :string

  end
end
