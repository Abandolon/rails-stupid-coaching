class QuestionsController < ApplicationController
  def ask
    # @question = params[:question]
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great! Have a good day!'
    elsif @question.include?('?') && @question == @question.upcase
      @answer = 'I can feel your motivation! Silly question, get dressed
      and go to work!'
    elsif @question.include?('?')
      @answer = 'I don\'t care, get dressed
      and go to work!'
    else
      @answer = 'What do you want? Go get ready for work!'
    end
    # @answer
  end
end
