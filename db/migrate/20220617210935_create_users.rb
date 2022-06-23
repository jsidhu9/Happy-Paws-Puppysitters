class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string "username"
      t.string "email"
      t.string "password_digest"
      t.string "name"
      t.string "image"
      t.string "bio"
      t.boolean "admin", default: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  end
end
