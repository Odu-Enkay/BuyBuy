#Rails.application.config.middleware.insert_before 0, Rack::Cors do
#  allow do
 #   origins 'https://buybuy-p8wt.onrender.com', 'https://buybuy-frontend.onrender.com'
  #  resource '*',
   #   headers: :any,
    #  methods: [:get, :post, :put, :patch, :delete, :options, :head]
  #end
#end

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://buybuy-frontend.onrender.com' # frontend URL

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      expose: ['Authorization']
  end
end

