class TodoItem < ApplicationRecord
  belongs_to :todo_list

  PRIORITIES = [
    ['Later', 1], 
    ['Next', 2], 
    ['Now', 3]
  ]

  def completed?
    !completed_at.blank?
  end
end
