class AddAnswerTimestamps < ActiveRecord::Migration
  def change
    add_timestamps :answers
  end
end
