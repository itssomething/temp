class QuestionBanksController < ApplicationController
  def index
    @question_banks = QuestionBank.all
  end

  def new
    @question_bank = QuestionBank.new
    3.times do
      question = @question_bank.questions.build
      4.times do
        question.answers.build
      end
    end
  end

  def create
    @question_bank = QuestionBank.new question_bank_params
    @question_bank.category_id = 1
    if @question_bank.save
      flash[:success] = "Saved"
      redirect_to root_path
    else
      flash[:warning] = "Error"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def question_bank_params
    params.require(:question_bank).permit(:name,
      questions_attributes: [:id, :content, :multi_correct, answers_attributes: [:id,
        :content, :correctness]])
  end
end
