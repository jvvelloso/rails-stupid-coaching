class QuestionsController < ApplicationController
  def ask; end

  def answer
    pergunta = params[:question]
    # raise
    @answer = if pergunta.count('?').positive?
                'Silly question, get dressed and go to work!'
              elsif pergunta.downcase == 'i am going to work right now!'
                'Great!'
              else
                'I don\'t care, get dressed and go to work!'
              end
  end
end
