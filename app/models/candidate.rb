class Candidate < ApplicationRecord
  # relationship
  has_many :vote_logs

  # validates
  validates :name, presence: true

  # instance method
  def gender_style
    if gender == 1
      "男"
    elsif gender == 2
      "女"
    else
      "不知道"
    end
  end
end

