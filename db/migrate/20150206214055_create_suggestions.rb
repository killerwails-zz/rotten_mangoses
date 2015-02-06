class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.references :episode, index: true
      t.text :text

      t.timestamps
    end
  end
end
