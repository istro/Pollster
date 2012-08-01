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
    phone = normalize_phone(params[:poll][:phone])
    poll = poll.merge({:edit_url => id, :easy_url => easy, :phone => phone})
    @poll = Poll.new(poll)
    # ideally, before saving i should send an email with confirmation link to click as email validation...
    if @poll.save
      redirect_to "/polls/#{id}"
    else
      raise "Could not save your poll. Please ensure all fields are filled out"
      render 'polls/new'
    end
  end
  
  def show
    @poll = Poll.find_by_easy_url(params[:easy_url])
  end

  def delete
    Poll.find_by_edit_url(params[:edit_url]).destroy
    redirect_to '/'
  end
  
  private
  
  def make_easy_url(string)
     easy = string.gsub(/^.*(\\|\/)/, '').downcase
     easy.gsub!(/[^0-9a-z.\-]/, '_')
  end

  def normalize_phone(num) 
    if  (num.count("0-9") != 10 && num.count("0-9") != 11)
      nil
    else
      num.gsub!(/[^0-9]/, '')
      num = num[1..-1] if num.length == 11
      num = num.gsub(/^?([0-9]{3})?([0-9]{3})?([0-9]{4})/, '(\1) \2-\3')
      num
    end
  end
end
