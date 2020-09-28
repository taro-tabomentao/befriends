class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string   :title,              null: false
      t.integer  :country_id,         null: false
      t.integer  :category_id,        null: false
      t.datetime :start_time,         null: false
      t.datetime :end_time,           null: false
      t.boolean  :online,             null: false
      t.string   :place,              null: false
      t.text     :content,            null: false
      t.timestamps
    end
  end
end
