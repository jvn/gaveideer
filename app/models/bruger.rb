class Bruger < ActiveRecord::Base
  has_many :begivenhed
  has_many :onskes
end
