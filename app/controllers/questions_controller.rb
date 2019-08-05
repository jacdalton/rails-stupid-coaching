class QuestionsController < ApplicationController
  def ask 
  end

  def answer
    @answer = params[:question]
    answer_clean = @answer.strip.downcase
    @response =
      if answer_clean.include?('i am going to work')
        'Great!'
      elsif answer_clean.include?('?')
        'Silly question, get dressed and go to work!'
      else
        'I don\'t care, get dressed and go to work!'
      end
  end
end
