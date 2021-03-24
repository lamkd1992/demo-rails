class CreateDtbUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :dtb_users do |t|
      t.string :username, null: false, limit: 50
      t.string :password, null: false, limit: 50
      t.string :email, null: false, limit: 100
      t.string :display_name, limit: 50
      t.string :phone, null: false, limit: 50
      t.string :avatar, limit: 100
      t.boolean :status, default: false
      t.belongs_to :mtb_roles, index: true
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
