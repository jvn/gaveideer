class Begivenhed < ActiveRecord::Base
  has_many :onskes
  belongs_to :bruger
end
