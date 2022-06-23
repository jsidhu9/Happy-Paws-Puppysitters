class CreateMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :memories do |t|
      t.string "title"
      t.string "desc"
      t.string "img_one"
      t.string "img_two"
      t.string "img_three"
      t.integer "rating"
      t.bigint "user_id", null: false
      t.bigint "dream_id", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["dream_id"], name: "index_memories_on_dream_id"
      t.index ["user_id"], name: "index_memories_on_user_id"
    end
  end
end
