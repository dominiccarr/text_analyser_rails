class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.integer :num_words
      t.integer :num_chars
      t.integer :num_char_no_whitespace
      t.integer :num_sentences
      t.integer :num_paragraphs
      t.decimal :avg_words
      t.integer :avg_sentences

      t.timestamps
    end
  end
end
