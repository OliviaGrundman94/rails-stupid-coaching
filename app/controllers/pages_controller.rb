class PagesController < ApplicationController
  def ask
  end

  def answer
    # assigining params question to the instance variable
    # the params is getting what was on the last page
    # in the form on the input it is coming from there where name="question"
    @question = params[:question]

    # @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    # storing the answer in search
    # params[:answer]
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif
      params[:question].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
