ActiveRecord::Schema[7.1].define(version: 2025_09_16_000001) do
  create_table "users", force: :cascade do |t|
    t.string   "email", null: false
    t.string   "encrypted_password", null: false
    t.string   "api_key"
    t.timestamps
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["api_key"], name: "index_users_on_api_key", unique: true

  create_table "api_logs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "endpoint"
    t.string   "ip_address"
    t.integer  "status"
    t.datetime "requested_at"
    t.timestamps
  end

  add_index "api_logs", ["user_id"], name: "index_api_logs_on_user_id"
end
