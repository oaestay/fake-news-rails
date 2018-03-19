class CreateEntryComments < ActiveRecord::Migration[5.1]
  def change
    create_table :entry_comments do |t|
      t.string :author
      t.text :body
      t.references :entry, foreign_key: true

      t.timestamps
    end
  end
end
