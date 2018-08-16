class ChangeFirstColumnNameInDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :amount
    add_column :doses, :description, :string
  end
end
