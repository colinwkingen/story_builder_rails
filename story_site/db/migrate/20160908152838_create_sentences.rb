class CreateSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.column :content, :string
      t.column :image_id, :integer

      t.timestamps
    end
  end
end
