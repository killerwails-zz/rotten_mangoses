class AddAttachmentToEpisodes < ActiveRecord::Migration
  def change
    create_table :add_attachment_to_episodes do |t|
      t.attachment :avatar 
      t.timestamps
    end
  end
end
