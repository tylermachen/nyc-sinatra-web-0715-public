class ApplicationController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }
  register Sinatra::Twitter::Bootstrap::Assets
  register Sinatra::Flash
  enable :sessions
  # helpers do
  #   def link_for(object)
  #     resource_url = "/" + object.class.name.downcase + "s"
  #     slug = object.slug
  #     name = object.name
  #     %{<a href="#{resource_url}/#{slug}">#{name}</a>}
  #   end
  # end

  get "/" do
    erb :index
  end
end
