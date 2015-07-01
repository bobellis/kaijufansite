class RemoveTypeColumn < ActiveRecord::Migration
  def change
    remove_column(:kaijus, :type, :string)
  end
end
