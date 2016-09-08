class AddAuthorNameToSentence < ActiveRecord::Migration[5.0]
  def change
    add_column :sentences, :author, :string
  end
end
