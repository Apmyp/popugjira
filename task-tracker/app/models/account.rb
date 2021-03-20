class Account < ApplicationRecord
  has_many :issues, dependent: :destroy

  def self.unassigned(issues)
    account = new(name: 'Unassigned')
    account.issues = issues
    account
  end
end
