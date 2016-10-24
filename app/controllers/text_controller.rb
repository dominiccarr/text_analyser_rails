require "#{Rails.root}/lib/Analyzer.rb"

class TextController < ApplicationController

  def save
    @text_input = params[:q]
    @analyser = Analyser.new(@text_input)
    @text = Text.new
    @text.content = @text_input
    @text.num_words = @analyser.number_of_words
    @text.num_chars = @analyser.number_of_characters
    @text.num_char_no_whitespace = @analyser.number_of_characters_no_whitespace
    @text.num_sentences = @analyser.number_of_sentences
    @text.num_paragraphs = @analyser.number_of_paragraphs
    @text.avg_words = @analyser.average_in_sentence
    @text.avg_sentences = @analyser.average_sentences_in_paragraph
    @text.save
    render :show
  end
  
  def form
  end
  
  def show 
    @id = params[:id]
    @text = Text.where(:id => @id).first
  end

end
