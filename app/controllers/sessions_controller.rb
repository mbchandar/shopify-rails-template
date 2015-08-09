class SessionsController < ApplicationController
  def create
    raise '' unless request.env['omniauth.auth']
    auth = request.env['omniauth.auth']
    store = Store.find_or_create_by provider: auth['provider'], url: auth['uid'], access_token: auth['credentials']['token']
    store.save!
    redirect_to root_path
  end
end
