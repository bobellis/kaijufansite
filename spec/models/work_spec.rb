require 'rails_helper'

describe Work do
  it { should validate_presence_of :title }
end
