class QuestionsController < ApplicationController
  def ask
  end

def answer
  @question = params[:question]

  if @question.blank?
    @answer = "Je ne t'entends pas !"
  elsif @question.downcase.include?("je vais travailler")
    @answer = "Bravo, continue comme ça !"
  elsif @question.end_with?("?")
    @answer = "C'est une bonne question, mais concentre-toi sur le travail."
  else
    @answer = "Peu importe, va travailler !"
  end
end
end
