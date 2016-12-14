class ChangeProjects < ActiveRecord::Migration
  def change
    add_column :projects, :category, :string
    add_column :projects, :time, :integer
  end
end
