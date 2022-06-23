class CreateDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :details do |t|
      t.string "details"
      t.string "image"
      t.bigint "dream_id", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["dream_id"], name: "index_details_on_dream_id"
    end
  end
end
