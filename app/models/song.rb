class Song < ActiveRecord::Base
    belongs_to :artist
    belongs_to :producer
end