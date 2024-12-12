class CreateUserStacks < ActiveRecord::Migration[7.1]
  def change
    create_table :user_stacks do |t|
      t.references :users, null: false, foreign_key: true
      t.references :stacks, null: false, foreign_key: true

      t.timestamps
    end
  end
end
