class CreateSitters < ActiveRecord::Migration[6.1]
  def change
    create_table :sitters do |t|
      t.string "name"
      t.string "image"
      t.string "phone_number"
      t.string "email"
      t.string "bio"
      t.boolean "availability"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  end
end
