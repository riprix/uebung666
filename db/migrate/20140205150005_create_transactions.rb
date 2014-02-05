class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.int :amount
      t.int :descrption

      t.timestamps
    end
  end
end
