require 'rails_helper'

describe 'section paths' do
  before do
    Section.create(section_name: "Ruby")
    Section.create(section_name: "JS")
  end

  it 'will show all sections' do
    visit root_path
    expect(page).to have_content "Ruby"
  end

  it 'will show a sections contents' do
    visit root_path
    click_on "JS"
    expect(page).to have_content "JS"
  end
end
