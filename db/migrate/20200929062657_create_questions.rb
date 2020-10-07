class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references  :user,          null: false, foreign_key: true
      t.integer     :country_id,    null: false
      t.integer     :category_id,   null: false
      t.integer     :status_id,     null: false
      t.string      :title,         null: false
      t.text        :content,       null: false
      t.timestamps
    end
  end
end
