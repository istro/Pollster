class QuestionsController < ApplicationController
  def create
    Question.create(:poll_id => params[:question][:poll_id], :body => params[:question][:body])
    redirect_to "/polls/#{params[:question][:edit_url]}"
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def destroy
    Question.destroy(params[:id])
    redirect_to "/polls/#{params[:edit_url]}"
  end

  def show
  end

  def index
  end
end
