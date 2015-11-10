class Question < ActiveRecord::Base
  belongs_to :section
  has_many :answers

  validates :question_title, presence: true
  validates :question_content, presence: true
  validates :question_author, presence: true

  acts_as_taggable
end
