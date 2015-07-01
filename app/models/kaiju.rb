class Kaiju < ActiveRecord::Base
  has_and_belongs_to_many :works, -> { uniq }

  validates :name, :presence => true
  validates :size, :presence => true
end
