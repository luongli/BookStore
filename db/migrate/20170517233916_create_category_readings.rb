class CreateCategoryReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :category_readings do |t|
      t.belongs_to :category, index: true
      t.belongs_to :reading, polymorphic: true, index: true
      t.timestamps
    end
  end
end
