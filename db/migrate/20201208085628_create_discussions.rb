class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.text :body
      t.references :basketball, foreign_key: true

      t.timestamps
    end
  end
end
