class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.string :name
      t.integer :age
      t.integer :gender
      t.text :politics
      t.integer :vote, default: 0

      t.timestamps
    end
  end
end
