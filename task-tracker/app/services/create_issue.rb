class CreateIssue
  def self.call(*args)
    new(*args).call
  end

  def initialize(issue_name)
    @issue_name = issue_name
  end

  def call
    Issue.create!(
      name: issue_name
    )
  end

  private
  
  attr_reader :issue_name
end
