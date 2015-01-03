_root_ = File.expand_path('../../',  __FILE__)

require "the_comments_manager/version"

require 'jbuilder'
require 'kaminari'
require 'the_simple_sort'
require 'the_notification'

require 'the_viking'
require 'yandex_cleanweb'

module TheCommentsManager
  class Engine < Rails::Engine; end
end

# Routing cocerns loading
require "#{ _root_ }/config/routes"
