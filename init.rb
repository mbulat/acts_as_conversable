require 'acts_as_conversable'

ActiveRecord::Base.send(:include, ActiveRecord::Acts::Conversable)

RAILS_DEFAULT_LOGGER.info "** acts_as_conversable: initialized properly."