class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.references :user, index: true
      t.string :title
      t.text :description
      t.integer :runtime_in_minutes
      t.string :poster_image_url
      t.datetime :release_date
      t.attachment :avatar
      t
      #file. add to controller
      t.timestamps
    end
  end
end
