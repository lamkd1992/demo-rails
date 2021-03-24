class CreateMtbDistrict < ActiveRecord::Migration[6.1]
  def change
    create_table :mtb_district do |t|
      t.string :name, null: false, limit: 255
      t.belongs_to :mtb_pref, null: false
      t.timestamps
    end
  end
end
