class CreateCashouts < ActiveRecord::Migration[5.0]
  def change
    create_table :cashouts do |t|
      t.datetime :date
      t.string :branch
      t.string :salesperson
      t.decimal :rate

      t.timestamps
    end
  end
end
