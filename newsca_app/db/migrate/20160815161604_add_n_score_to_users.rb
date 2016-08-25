class AddNScoreToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ns_score, :integer, array: true, default: [-1,1]
  end
end
