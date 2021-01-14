class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|

      t.string     :title
      t.time   :start_time,    null: false
      t.time   :end_time,      null: false
      t.date   :start_date,    null: false
      t.date   :end_date,      null: false
      t.references :user,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
