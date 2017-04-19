class Cfh < ApplicationRecord
  validates_presence_of :title, :message, :status
end
