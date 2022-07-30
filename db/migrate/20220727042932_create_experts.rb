class CreateExperts < ActiveRecord::Migration[6.1]
  def change
    create_table :experts do |t|
      t.string :name, null: false
      t.integer :age
      t.string :nationality
      t.string :workplace
      t.boolean :editor
      t.boolean :writer
      t.boolean :reviewer

      t.timestamps
    end
  end
end
