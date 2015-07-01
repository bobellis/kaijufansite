class CreateKaiju < ActiveRecord::Migration
  def change
    create_table :kaijus do |t|
      t.string :name
      t.integer :size
      t.string :type
      t.string :description
      t.string :timestamps

      t.timestamps
    end
  end
end
