class Header < ActiveRecord::Base
  validates_presence_of :heading, :imgurl
end
