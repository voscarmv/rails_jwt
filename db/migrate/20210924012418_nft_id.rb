class NftId < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nft_id, :integer
    add_index :users, :nft_id, unique: true
  end
end
