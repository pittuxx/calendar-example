class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.string :body
      t.datetime :starts
      t.datetime :ends

      t.timestamps null: false
    end
  end
end
