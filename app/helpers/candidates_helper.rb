module CandidatesHelper
  def candidate_name(candidate)
    if candidate.gender == 1
      "#{candidate.name} 先生"
    elsif candidate.gender == 2
      "#{candidate.name} 女士"
    else
      "#{candidate.name}"
    end
  end

  def gender_style(value)
    if value == 1
      "男"
    elsif value == 2
      "女"
    else
      "不知道"
    end
  end
end
