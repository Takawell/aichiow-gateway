class CreateApiLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :api_logs do |t|
      t.references :user, foreign_key: true
      t.string :endpoint
      t.string :ip_address
      t.integer :status
      t.datetime :requested_at
      t.timestamps
    end
  end
end
