class PagesController < ApplicationController
  def ask
  end

  def answer
    @answer
    @user_input = params[:question]

    if @user_input == 'I am going to work'
      @answer = 'Great!'
    elsif @user_input[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!.'
    else
      @answer = " I don't care, get dressed and go to work!"
    end
  end
end
