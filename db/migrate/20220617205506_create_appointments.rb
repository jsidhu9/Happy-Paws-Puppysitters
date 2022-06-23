class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string "title"
      t.date "appt_start"
      t.date "appt_end"
      t.string "petcare"
      t.bigint "client_id", null: false
      t.bigint "sitter_id", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["client_id"], name: "index_appointments_on_client_id"
      t.index ["sitter_id"], name: "index_appointments_on_sitter_id"
    end
  end
end
