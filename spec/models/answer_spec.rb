require 'rails_helper'

describe Answer do
  it { should belong_to :question }
  it { should validate_presence_of :answer_content }
  it { should validate_presence_of :answer_author }
end
