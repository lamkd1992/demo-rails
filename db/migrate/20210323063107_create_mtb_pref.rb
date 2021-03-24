class CreateMtbPref < ActiveRecord::Migration[6.1]
  def change
    create_table :mtb_pref do |t|
      t.string :name, null: false, limit: 255
      t.timestamps
    end
  end
end
