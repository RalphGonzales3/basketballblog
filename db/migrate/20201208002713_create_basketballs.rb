class CreateBasketballs < ActiveRecord::Migration[5.2]
  def change
    create_table :basketballs do |t|
      t.string :name
      t.string :team
      t.text :facts

      t.timestamps
    end
  end
end
