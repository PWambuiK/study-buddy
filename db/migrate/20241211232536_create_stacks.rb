class CreateStacks < ActiveRecord::Migration[7.1]
  def change
    create_table :stacks do |t|
      t.string :title
      t.string :subject
      t.string :description
      t.integer :number_of_flashcards, null: false
      t.references :users, foreign_key: true
      t.timestamps
    end
  end
end
