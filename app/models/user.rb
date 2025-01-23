class User < ApplicationRecord
  def find_users_tests_by_difficulty_level(difficulty_level)
    Test
      .joins("JOIN results ON tests.id = results.test_id")
      .where(results: { user_id: id })
      .where(level: difficulty_level)
  end
end
