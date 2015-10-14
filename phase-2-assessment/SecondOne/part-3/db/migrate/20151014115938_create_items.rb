class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title, null:false
      t.text   :description, null:false
      t.date   :start_date, null:false
      t.date   :end_date, null:false

      t.belongs_to :user
      t.timestamps null:false
    end
  end
end
