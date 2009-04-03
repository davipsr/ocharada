class User < ActiveRecord::Base
  has_many :winners
  has_many :halls,
    :through => :winners
  validates_presence_off :name, :gravatar
end
