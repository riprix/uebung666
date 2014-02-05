class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.int :number
      t.int :balance

      t.timestamps
    end
  end
end
