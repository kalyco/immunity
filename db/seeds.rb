if Rails.env.development?

  user = User.find_or_create_by(
    email: "email@email.com",
    encrypted_password: "password"
  )
  user.password = "password"
  user.save
end