class RemoveTypeFromWorks < ActiveRecord::Migration
  def change
    remove_column :works, :type, :string
  end
end
