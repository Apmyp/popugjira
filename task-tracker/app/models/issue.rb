class Issue < ApplicationRecord
  belongs_to :account, optional: true

  enum status: %i[opened closed]

  validates_presence_of :name
end
