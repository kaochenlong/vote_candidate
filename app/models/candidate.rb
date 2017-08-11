class Candidate < ApplicationRecord
  validates :name, presence: true

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

