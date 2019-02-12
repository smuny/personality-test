class CreateQuestions < ActiveRecord::Migration[5.0]

  def change
    create_table :questions do |t|
      t.string :desc
      t.string :answer_one
      t.string :answer_two
      t.string :answer_three
      t.string :answer_four
    end
  end
  
end
