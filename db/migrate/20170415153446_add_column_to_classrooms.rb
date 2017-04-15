class AddColumnToClassrooms < ActiveRecord::Migration[5.0]
  def change
    add_column :classrooms, :subject, :string
  end
end
