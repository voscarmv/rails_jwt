class NftId < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nft_id, :
    add_index :users, :jti, unique: true
  end
end
