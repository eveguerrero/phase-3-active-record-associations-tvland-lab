class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters 

    def full_name
     "#{self.first_name} #{self.last_name}"
    end

    def list_roles 
        #"Khaleesi - Game of Thrones"
        # character_names = self.characters.map(&:name)
        #  show_names = self.shows.map(&:name)
        self.characters.map do |c|
        "#{c.name} - #{c.show.name}"
        end
    end

end