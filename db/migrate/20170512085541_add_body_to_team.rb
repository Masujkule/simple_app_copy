class AddBodyToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :body, :text
  end
end
