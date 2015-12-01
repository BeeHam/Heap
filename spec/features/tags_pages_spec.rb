require 'rails_helper'

describe 'tags path process' do
  before do
    @question = Question.create(question_title: "Test title", question_author: "Test Author", question_content: "Test content", tag_list: "tag")
  end

  it 'shows all tagged questions' do
    visit question_path(@question)
    click_link "tag"
    expect(page).to have_content "Test title"
  end
end
