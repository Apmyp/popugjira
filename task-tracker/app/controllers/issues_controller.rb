class IssuesController < ApplicationController
  def index
  end

  def create
    CreateIssue.call(params.permit(:name).to_h[:name])

    redirect_to root_path
  end
end
