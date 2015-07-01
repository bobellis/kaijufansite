require 'rails_helper'

describe Kaiju do
  it { should validate_presence_of :name }
  it { should have_and_belong_to_many :works}
end
