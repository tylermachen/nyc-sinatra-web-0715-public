class CreateFigureTitles < ActiveRecord::Migration
  def change
    create_table :figure_titles do |t|
      t.belongs_to :figure, index: true
      t.belongs_to :title, index: true
      t.timestamps null: false
    end
  end
end
