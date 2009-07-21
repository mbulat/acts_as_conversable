require 'acts_as_conversable'
ActiveRecord::Base.send(:include, ActiveRecord::Acts::Conversable)

require File.dirname(__FILE__) + '/lib/acts_as_conversable'
