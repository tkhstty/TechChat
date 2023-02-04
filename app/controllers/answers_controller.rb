class AnswersController < ApplicationController
  def create
    answer = Answer.create(answer_params)
    redirect_to question_path(answer.question.id)
  end


  private
  def answer_params
    params.require(:answer).permit(:content, :name).merge(question_id: params[:question_id])
  end
end
