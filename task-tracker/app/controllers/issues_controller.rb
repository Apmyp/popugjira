class IssuesController < ApplicationController
  def index
    @unassigned_account = Account.unassigned(Issue.where(account_id: nil).all)
    @accounts = Account.includes(:issues).all
  end

  def create
    CreateIssue.call(params.permit(:name).to_h[:name])

    redirect_to root_path
  end

  def reassign
    ReassignIssues.call

    redirect_to root_path
  end

  def close
    CloseIssue.call(params[:id])

    head :ok
  end
end
