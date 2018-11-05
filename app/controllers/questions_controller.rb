class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @coachAnswer = "Great!"
    elsif @question.include?('?')
      @coachAnswer = "Silly question, get dressed and go to work!"
    else
      @coachAnswer = "I don't care, get dressed and go to work!"
    end
  end
end
