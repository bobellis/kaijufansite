class AddImageSrcToKaiju < ActiveRecord::Migration
  def change
    add_column :kaijus, :image, :string
  end
end
