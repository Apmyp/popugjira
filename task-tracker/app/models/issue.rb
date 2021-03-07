class Issue < ApplicationRecord
  belongs_to :account

  enum status: %i[opened closed]
end
