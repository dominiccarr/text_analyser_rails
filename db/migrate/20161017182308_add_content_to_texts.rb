class AddContentToTexts < ActiveRecord::Migration
  def change
    add_column :texts, :content, :string
  end
end
