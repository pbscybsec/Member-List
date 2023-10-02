# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # Adjust this to restrict origins as needed.
    resource '*', headers: :any, methods: %i[get post put patch delete options]
  end
end
