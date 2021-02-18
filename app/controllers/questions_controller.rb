class QuestionsController < ApplicationController

  def ask
      
  end  

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "Não consigo te ouvir"
    elsif @question.downcase == "i am going to work"
      @answer = "É nóis! Vamo lá!"
    elsif @question.ends_with?("?")
      @answer = "Que pergunta imbecil! Se troca e vamo malhar!"
    else
      @answer = "Não quero nem saber, se troca e vamo malhar!"
    end
  end
    
end
