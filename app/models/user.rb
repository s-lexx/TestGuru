class User < ApplicationRecord
  def find_by_level(level)
    Result
      .joins("JOIN tests ON tests.id = results.test_id AND tests.level = ?", level)
      .where('results.user_id = ?', id)
      .where('results.status IS NOT NULL')
      .pluck('tests.title')
  end
end
