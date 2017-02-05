class AnswersController < ApplicationController
  before_action :set_question
  def create
    @answer = @question.answers.build(answer_params)
    @answer.save
    redirect_to @question
  end

  def answer_params
    params.require(:answer).permit(:body)
  end

  def set_question
    @question = Question.find(params[:question_id])
  end
end
