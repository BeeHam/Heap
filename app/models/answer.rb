class Answer < ActiveRecord::Base
  belongs_to :question

  validates :answer_content, presence: true
  validates :answer_author, presence: true
end
