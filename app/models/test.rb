class Test < ApplicationRecord
  def self.find_by_name(name)
    Test
      .select(:title)
      .joins("JOIN categories ON tests.category_id = categories.id")
      .where(categories: { title: name })
      .order('tests.title DESC')
      .pluck('tests.title')
  end
end
