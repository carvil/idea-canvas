require 'bundler'
Bundler.require

require 'sinatra/asset_pipeline'

class IdeaCanvas < Sinatra::Base

  set :assets_precompile, %w(*.css *.png *.jpg *.svg)
  set :assets_prefix, %w(assets assets/stylesheets/ assets/images/)

  register Sinatra::AssetPipeline

  get '/' do
    haml :index
  end
end
