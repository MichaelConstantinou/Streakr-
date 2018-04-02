class CreateStreaks < ActiveRecord::Migration[5.1]
  def change
    create_table :streaks do |t|
      t.references :user
      t.string :title, null: false
      t.text :aim, null: false
      t.integer :frequency
      t.date :achieved
      t.boolean :archive, default: false
      t.timestamps
    end
  end

end
