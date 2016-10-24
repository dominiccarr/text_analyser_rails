class Analyser
    attr_accessor :analysis_text
    
    def initialize(analysis_text)   
        @analysis_text = analysis_text 
    end
  
   def summary
       "Number of words: #{number_of_words} \nNumber of characters: #{number_of_characters} \n Number of characters excluding whitespaces:#{number_of_characters_no_whitespace}
       \nNumber of sentences: #{number_of_sentences} \nNumber of paragraphs: #{number_of_paragraphs} \nAverage number of words In a sentence: #{average_in_sentence}
      \nAverage number of sentences in a paragraph: #{average_sentences_in_paragraph}"
    end
  
    def number_of_words 
        return analysis_text.split(' ').length
    end
    
    def number_of_characters
        return analysis_text.size
    end
    
    def number_of_characters_no_whitespace
        return analysis_text.gsub(/\s+/, "").size
    end
    
    def number_of_sentences
        return analysis_text.strip.split(/\.|\?|!/).length
    end
    
    def number_of_paragraphs 
        return analysis_text.split(/\n\n/).length
    end
    
    def average_in_sentence 
        return analysis_text.split(' ').length / analysis_text.strip.split(/\.|\?|!/).length
    end
    
    def average_sentences_in_paragraph
        return analysis_text.strip.split(/\.|\?|!/).length / analysis_text.split(/\n\n/).length
    end
	
end