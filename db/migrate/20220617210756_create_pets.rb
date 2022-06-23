class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string "name"
      t.string "species"
      t.string "meds"
      t.string "fears"
      t.string "likes"
      t.string "image"
      t.bigint "client_id", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["client_id"], name: "index_pets_on_client_id"
    end
  end
end
