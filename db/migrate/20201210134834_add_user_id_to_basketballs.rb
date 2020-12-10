class AddUserIdToBasketballs < ActiveRecord::Migration[5.2]
  def change
    add_column :basketballs, :user_id, :integer
  end
end
