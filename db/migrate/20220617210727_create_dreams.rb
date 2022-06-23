class CreateDreams < ActiveRecord::Migration[6.1]
  def change
    create_table :dreams do |t|
      t.string "dream"
      t.string "category"
      t.boolean "status", default: false
      t.date "due"
      t.bigint "list_id", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["list_id"], name: "index_dreams_on_list_id"
    end
  end
end
