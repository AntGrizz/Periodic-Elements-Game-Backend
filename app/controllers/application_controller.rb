class ApplicationController < ActionController::API

  def encode(payload)
    JWT.encode(payload, Rails.application.credentials.jwt_key[:key], 'HS256')
  end

  #given a token, return the decrypted payload
  def decode(token)
    JWT.decode(token, Rails.application.credentials.jwt_key[:key], true, {algorithm: 'HS256'})[0]
  end

end
