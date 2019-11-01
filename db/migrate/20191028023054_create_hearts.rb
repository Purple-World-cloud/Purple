class CreateHearts < ActiveRecord::Migration[5.2]
  def change
    create_table :hearts do |t|
	t.belongs_to :post, index: true
    t.belongs_to :account, index: true
    t.timestamps null: false
    end
  end
end
