# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :integer
#  street     :string
#  city       :string
#

class Address < ActiveRecord::Base
  belongs_to :client
end
