require 'sinatra/base'
require 'sinatra/assetpack'

class IdeaCanvas < Sinatra::Base

  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack

  assets {
    serve '/stylesheets', from: 'assets/stylesheets'
    serve '/images'     , from: 'assets/images'
    serve '/javascripts', from: 'assets/javascripts'

    css :application, '/css/application.css', [
      '/stylesheets/base.css', '/stylesheets/layout.css',
      '/stylesheets/lean_canvas.css', '/stylesheets/skeleton.css',
      '/stylesheets/animate.css'
    ]

    js :application, '/javascripts/application.js', [
      '/javascripts/wow.js'
    ]
  }

  get '/' do
    haml :index
  end
end
