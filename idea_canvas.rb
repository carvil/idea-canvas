Bundler.require

require 'sinatra/asset_pipeline'

class IdeaCanvas < Sinatra::Base
  register Sinatra::AssetPipeline

  get '/' do
    haml :index
  end
end
