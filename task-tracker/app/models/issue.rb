class Issue < ApplicationRecord
  belongs_to :account, optional: true

  enum status: %i[opened closed]

  validates_presence_of :name

  default_scope { order(:status) }

  def unassigned?
    account.name == 'Unassigned'
  end
end
