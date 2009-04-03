class Hall < ActiveRecord::Base
  belongs_to :charade
  has_many :winners
  has_many :users,
    :through => :winners
end
