class CreateStreaks < ActiveRecord::Migration[5.1]
  def change
    create_table :streaks do |t|
      t.references :user
      t.string :title, null: false
      t.integer :frequency
      t.timestamps
    end
  end
end
