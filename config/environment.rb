# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Enable carrierwave
require 'carrierwave/orm/activerecord'