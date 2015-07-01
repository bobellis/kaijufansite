class KaijusWorks < ActiveRecord::Base
  belongs_to :kaiju
  belongs_to :work

  validates_uniqueness_of :kaiju_id, :scope => :work_id
end
