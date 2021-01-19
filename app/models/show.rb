class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        chrs = self.characters
        chrs.collect{ |chr| "#{chr.actor.first_name} #{chr.actor.last_name}"}
    end
end