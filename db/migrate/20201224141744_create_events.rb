class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string     :title
      t.datetime   :start,    null: false
      t.datetime   :end,      null: false
      t.references :user,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
