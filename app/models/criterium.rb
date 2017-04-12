# #
# == Schema Information
# Schema version: 20170410144230
#
# Table name: criteria
#
# *id*::         <tt>integer, not null, primary key</tt>
# *created_at*:: <tt>datetime, not null</tt>
# *updated_at*:: <tt>datetime, not null</tt>
#--
# == Schema Information End
#++
# #

class Criterium < ActiveRecord::Base
  belongs_to :service_offering

  has_many :statuses

  validates :service_offering_id,
            presence: true
end
