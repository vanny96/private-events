class AddDetailsToParty < ActiveRecord::Migration[5.2]
  def change
    add_column :parties, :location, :string
    add_column :parties, :body, :text
  end
end
