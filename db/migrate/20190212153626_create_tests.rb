class CreateTests < ActiveRecord::Migration[5.0]

  def change
    create_table :tests do |t|
      t.string :forest_test
      t.string :castle_test
      t.string :oasis_test
      t.string :love_path_test
    end
  end

end
