require 'rails_helper'

describe 'answers CRUD process' do
  before do
    @section = Section.create(section_name: "Ruby")
    @question = @section.questions.create(question_title: "Test Title", question_author: "Test Author", question_content: "Test content")
    @answer = @question.answers.create(answer_author: "Test Answer Author", answer_content: "Test answer content")
  end

  it 'adds an answer' do
    visit question_path(@question)
    click_on "Answer"
    fill_in "Name", with: 'Another Name'
    fill_in "Content", with: "More content"
    click_on "Submit"
    expect(page).to have_content "More content"
  end

  it "edits an answer" do
    visit question_path(@question)
    click_link "Edit"
    fill_in "Content", with: "Edited Test Content"
    click_on "Submit"
    expect(page).to have_content "Edited Test Content"
  end

  it "deletes an answer" do
    visit question_path(@question)
    click_link "Delete"
    expect(page).to have_no_content("Test answer content")
  end
end
