class CreateKaijusWorksJoinTable < ActiveRecord::Migration
  def change
    create_table :kaijus_works, id: false do |t|
      t.belongs_to :kaiju, index: true
      t.belongs_to :work, index: true
    end
  end
end
