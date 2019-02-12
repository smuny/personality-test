class CreateQuestions < ActiveRecord::Migration[5.0]

  def change
    create_table :questions do |t|
      t.string :one
      t.string :two
      t.string :three
      t.string :four
      t.string :five
      t.string :six
      t.string :seven
      t.string :eight
    end
  end
  
end
