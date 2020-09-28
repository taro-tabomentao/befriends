class CreateUserEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :user_events do |t|
      t.references  :user,          null: false
      t.references  :event,         null: false
      t.timestamps
    end
  end
end
