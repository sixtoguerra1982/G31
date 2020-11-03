class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :total_amount
      t.boolean :finish, default: false

      t.timestamps
    end
  end
end
