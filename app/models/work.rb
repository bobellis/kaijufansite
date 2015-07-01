class Work < ActiveRecord::Base
  has_and_belongs_to_many :kaijus, -> { uniq }

  validates :title, :presence => true
end
