# any instance variables you declare will be passed from controller to HTML

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # identify the question, get access
    # store question in HTML using an instance variable
    @question = params[:question]
    # store the answer depending on the question
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
