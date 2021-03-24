class CreateMtbRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :mtb_roles do |t|
      t.string :name
      t.timestamps
    end
  end
end
