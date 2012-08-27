class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  attr_accessible :description, :title, :user
  #agregue :user porque sino me tiraba Can't mass-assign protected attributes: user
  validates :title, :presence => true
  validates :description, :presence => true
  validates :description, :presence => true,
                          :length => { :minimum => 10 }

end
