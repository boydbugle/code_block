class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.text :code

      t.timestamps
    end
  end
end
