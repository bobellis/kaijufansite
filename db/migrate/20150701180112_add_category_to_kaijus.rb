class AddCategoryToKaijus < ActiveRecord::Migration
  def change
    add_column(:kaijus, :category, :string)
  end
end
