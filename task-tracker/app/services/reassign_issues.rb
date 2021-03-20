class ReassignIssues
  def self.call
    new.call
  end

  def call
    account_ids = Account.order('RANDOM()').pluck(:id).cycle
    Issue.opened.order('RANDOM()').find_each do |issue|
      issue.update!(
        account_id: account_ids.next
      )
    end
  end
end
