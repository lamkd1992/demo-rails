class CreateDtbPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :dtb_posts do |t|
      t.string :title, null: false, limit: 255
      t.text :content, null: false
      t.boolean :status, default: false
      t.belongs_to :dtb_categories, index: true
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
