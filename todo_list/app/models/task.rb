class Task < ActiveRecord::Base

  belongs_to :list

  validates :name, presence: true
  validates :completed, presence: true

end
