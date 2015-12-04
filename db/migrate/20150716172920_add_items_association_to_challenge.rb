class AddItemsAssociationToChallenge < ActiveRecord::Migration
  def self.up
      add_column :items, :challenge_id, :integer
      add_index 'items', ['challenge_id'], :name => 'index_challenge_id' 
  end

  def self.down
      remove_column :items, :challenge_id
  end
end
