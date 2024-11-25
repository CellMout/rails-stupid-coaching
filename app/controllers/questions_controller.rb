class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @ask = params[:question]
    if @ask == "hello"
      @answer = "Hi kid!"
    elsif @ask == "what time is it?"
      @answer = "#{Time.now.strftime("%I:%M %p")} Time to work!"
    elsif @ask ==  "I am going to work"
       @answer = "Great!"
    elsif @ask.last == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
