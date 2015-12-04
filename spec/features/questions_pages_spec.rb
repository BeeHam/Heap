require 'rails_helper'

describe 'questions CRUD process' do
  before do
    @section = Section.create(section_name: "Ruby")
    @question = @section.questions.create(question_title: "Test Title", question_author: "Test Author", question_content: "Test content")
  end

  it 'adds a question' do
    visit section_path(@section)
    click_on "Ask"
    fill_in "Title", with: "Another Title"
    fill_in "Name", with: "Another Name"
    fill_in "Content", with: "More content"
    click_on "Submit"
    expect(page).to have_content "Another Title"
  end

  it "edits a question" do
    visit section_path(@section)
    click_link "Edit"
    fill_in "Title", with: "Edited Test Title"
    click_on "Submit"
    expect(page).to have_content "Edited Test Title"
  end

  it "deletes a question" do
    visit section_path(@section)
    click_link "Delete"
    expect(page).to have_no_content("Test Title")
  end
end
