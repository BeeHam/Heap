class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_content
      t.string :question_author

      t.timestamps
    end
  end
end
