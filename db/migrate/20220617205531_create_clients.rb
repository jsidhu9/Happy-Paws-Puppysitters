class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string "username"
      t.string "password_digest"
      t.string "fullname"
      t.string "image"
      t.string "address"
      t.string "number"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.boolean "admin", default: false
    end
  end
end
