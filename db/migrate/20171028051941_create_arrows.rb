class CreateArrows < ActiveRecord::Migration[5.1]
  def change
    create_table :arrows do |t|
      t.text :content
      # t.boolean :read
      # t.references :user, for eign_key: true

      t.timestamps
    end
  end
end
