class CreateDtbCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :dtb_categories do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
