# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value >0 && value <=10
            @happiness = value
        elsif value < 0
            @happiness = 0
        elsif value >10 
            @happiness = 10
        end
        @happiness
    end
    
    def hygiene=(value)
        if value >0 && value <11
            @hygiene = value
        elsif value < 0
            @hygiene = 0
        elsif value > 10 
            @hygiene = 10
        end
        @hygiene
    end


    def happy?
        if @happiness < 8
            return false
        else 
            return true
        end
    end

    def clean?
        if @hygiene <8
            return false
        else
            return true
        end
    end

    def get_paid(salary)
        @bank_account += salary

        return 'all about the benjamins'
    end

    def take_bath
        total = self.hygiene + 4
        self.hygiene=(total)

        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        total = self.hygiene - 3
        self.hygiene=(total)

        total2 = self.happiness + 2
        self.happiness=(total2)

        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend_name)
        total = self.happiness + 3
        self.happiness=(total)

        total2 = friend_name.happiness + 3
        friend_name.happiness=(total2)

        return "Hi #{friend_name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend_name, topic)
        if topic == 'politics'
            total = self.happiness - 2
            self.happiness=(total)

            total2 = friend_name.happiness - 2
            friend_name.happiness=(total2)

            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            total = self.happiness + 1
            self.happiness=(total)

            total2 = friend_name.happiness + 1
            friend_name.happiness=(total2)

            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end

    end
    

end








