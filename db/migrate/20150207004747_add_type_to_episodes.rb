class AddTypeToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :type, :string
  end
end
