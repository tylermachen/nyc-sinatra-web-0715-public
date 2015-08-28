class CreateFiles < ActiveRecord::Migration
  def change
    create_table :files do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
