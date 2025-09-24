Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://your-frontend.netlify.app' # or '*' for test
    resource '*',
      headers: :any,
      methods: %i[get post put patch delete options],
      credentials: false
  end
end
