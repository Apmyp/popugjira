class CloseIssue
  def self.call(*args)
    new(*args).call
  end

  def initialize(issue_id)
    @issue_id = issue_id
  end

  def call
    issue.update!(status: :closed)
  end

  private
  
  attr_reader :issue_id

  def issue
    @issue ||= Issue.find(issue_id)
  end
end
