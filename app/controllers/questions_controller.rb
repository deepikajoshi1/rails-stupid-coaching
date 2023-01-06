class QuestionsController < ApplicationController
  def ask; end
  def answer
    @question = params[:question]
    @answer = reaction(@question)
  end
  def reaction(question)


    return %(Great!) if question.downcase == %(i am going to work) && !question.nil?

    text1 = %(Silly question, get dressed and go to work!)
    text2 = %(I don't care, get dressed and go to work!)
    question.end_with?('?') ? text1 : text2
  end
end

------------------------------------------------------------------------------------------

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
