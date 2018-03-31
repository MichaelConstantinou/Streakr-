class CreateChains < ActiveRecord::Migration[5.1]
  def change
    create_table :chains do |t|
      t.references :streak, foreign_key: true
      t.integer :consecutive_days
      t.date :chain_ended

      t.timestamps
    end
  end
end
