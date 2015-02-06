class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.references :admin, index: true
      t.string :title
      t.text :description
      t.integer :runtime_in_minutes
      t.datetime :release_date
      t.attachment :avatar
      t.attachment :track
      t.timestamps
    end
  end
end
