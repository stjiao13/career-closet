class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|
      t.string :number
      t.text :description
      t.timestamps
    end
  end
end
