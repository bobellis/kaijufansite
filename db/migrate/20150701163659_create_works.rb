class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :type
      t.string :author
      t.string :actors
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
