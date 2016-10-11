class CreateTrainers < ActiveRecord::Migration[5.0]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :age
      t.integer :height
      t.integer :weight
      t.integer :level
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
