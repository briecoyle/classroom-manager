class CreateClassrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :classrooms do |t|
      t.string :period
      t.belongs_to :user
      t.timestamps
    end
  end
end
