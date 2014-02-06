Bundler.require

require 'sinatra/asset_pipeline'

class IdeaCanvas < Sinatra::Base

  set :assets_prefix, %w(assets)

  register Sinatra::AssetPipeline

  get '/' do
    haml :index
  end
end
