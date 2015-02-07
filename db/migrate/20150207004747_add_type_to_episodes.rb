class AddTypeToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :podcast_type, :string
  end
end
