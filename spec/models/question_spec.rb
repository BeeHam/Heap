require 'rails_helper'

describe Question do
  it { should belong_to :section }
  it { should have_many :answers }
  it { should validate_presence_of :question_title }
  it { should validate_presence_of :question_content }
  it { should validate_presence_of :question_author }
end
