class Api::V1::UsersController < ApplicationController

  def authorization_code
    email = "kyle.w.stewart@mac.com"
    o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    code = (0...8).map { o[rand(o.length)] }.join
    user = User.create(email: email, authorization_code: code)
    UserMailer.send_authorization_code(user).deliver_now

    render json: {authorization_code: email}
  end

end
