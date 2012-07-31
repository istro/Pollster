require 'securerandom'
class PollsController < ApplicationController

  def new
    @poll = Poll.new
  end

  def edit
    @poll = Poll.find_by_edit_url(params[:edit_url])
    #displays your poll, buttons "add a question" redirects back here
    #button save alerts "did you save your edit link"
  end

  def create
    poll = params[:poll]
    id = SecureRandom.urlsafe_base64(10).downcase
    easy = make_easy_url(params[:poll][:name])
    poll = poll.merge({:edit_url => id, :easy_url => easy})
    @poll = Poll.new(poll)
    if @poll.save
      redirect_to "/#{id}"
    end
  end
  
  def show
  end

  def destroy
  end
  
  private
  
  def make_easy_url(string)
     easy = string.gsub(/^.*(\\|\/)/, '').downcase
     easy.gsub!(/[^0-9A-Za-z.\-]/, '_')
  end
end
