class UsersController < ApplicationController
  def index
    expires_in 10.minutes
    @users = Rails.cache.fetch(:users) do
      User.by_karma.includes(:karma_points).limit(50).to_a
    end
  end
end
