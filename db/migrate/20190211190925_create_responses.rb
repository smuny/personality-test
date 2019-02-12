class CreateResponses < ActiveRecord::Migration[5.0]

  def change
    create_table :responses do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :answer_one
      t.string :answer_two
      t.string :answer_three
      t.string :answer_four
    end
  end

end
