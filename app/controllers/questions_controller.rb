class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask_question = params[:question]

    @answer = if @ask_question == 'I am going to work'
                'Great'
              elsif @ask_question.include? '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
