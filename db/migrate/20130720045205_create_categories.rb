class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :path
      t.string :name

      t.timestamps
    end
  end
end
