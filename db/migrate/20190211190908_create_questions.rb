class CreateQuestions < ActiveRecord::Migration[5.0]

  def change
    create_table :questions do |t|
      t.string :desc
      t.string :answers
    end
  end
  
end
