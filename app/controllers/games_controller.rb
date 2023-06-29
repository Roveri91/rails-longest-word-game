class GamesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def new
      @alphabet = ('a'..'z').to_a
      @selection =[]
      10.times {
        @selection << (@alphabet.sample)
      }
    end

    def score
      @guess = params[:guess]
      
      def included?(word, range)
        word.chars.all? { |letter| word.co(letter) <= range.count(letter) }
      end

      if included?(@guess, @selection)
        @message = "Sorry but #{guess} can`t built on #{selection}"        
      end
    end
end
