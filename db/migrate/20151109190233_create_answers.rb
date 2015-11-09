class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer_content
      t.string :answer_author
      t.integer :question_id
      t.integer :vote
      t.column :star, :boolean, default: false
    end
  end
end
