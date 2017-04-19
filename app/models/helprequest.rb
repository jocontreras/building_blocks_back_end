class Helprequest < ApplicationRecord
  validates_presence_of :title, :message, :status
end
