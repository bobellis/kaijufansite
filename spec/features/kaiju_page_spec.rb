require 'rails_helper'

describe 'the homepage process' do
  it 'visits the homepage' do
    visit root_path
    expect(page).to have_content 'Kaijus'
  end
end
