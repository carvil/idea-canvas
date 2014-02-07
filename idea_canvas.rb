require 'sinatra/base'
require 'sinatra/assetpack'

class IdeaCanvas < Sinatra::Base

  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack

  assets {
    serve '/stylesheets', from: 'assets/stylesheets'
    serve '/images'     , from: 'assets/images'

    css :application, '/css/application.css', [
      '/stylesheets/base.css', '/stylesheets/layout.css',
      '/stylesheets/lean_canvas.css', '/stylesheets/skeleton.css'
    ]
  }

  get '/' do
    haml :index
  end
end
