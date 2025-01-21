class Test < ApplicationRecord
  def self.find_by_category(name)
    Test
      .select(:title)
      .joins("JOIN categories ON tests.category_id = categories.id")
      .where(categories: { title: name })
      .order(title: :desc)
      .pluck(:title)
  end
end
