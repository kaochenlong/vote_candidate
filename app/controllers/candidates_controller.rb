class CandidatesController < ApplicationController
  before_action :find_candidate, only: [:show,
                                        :edit,
                                        :update,
                                        :destroy]

  def index
    @candidates = Candidate.order(id: :desc)
  end

  def show
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)

    if @candidate.save
      redirect_to candidates_path, notice: "新增候選人成功!"
    else
      render :new  # new.html.erb
    end
  end

  def edit
  end

  def update
    if @candidate.update(candidate_params)
      redirect_to candidates_path, notice: "更新成功"
    else
      render :edit
    end
  end

  def destroy
    @candidate.destroy
    redirect_to candidates_path
  end

  private
  def find_candidate
    @candidate = Candidate.find_by(id: params[:id])
    redirect_to candidates_path, notice: "資料已刪除" unless @candidate
  end

  def candidate_params
    params.require(:candidate).permit(:name,
                                      :age,
                                      :gender,
                                      :politics)
  end
end
