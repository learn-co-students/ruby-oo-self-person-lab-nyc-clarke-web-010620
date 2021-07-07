# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def happiness=(level)
        if level < 0 
            @happiness = 0
        elsif level > 10
            @happiness = 10
        else 
            @happiness = level
        end

    end

    def hygiene=(level)
        if level < 0 
            @hygiene = 0
        elsif level > 10
            @hygiene = 10
        else 
            @hygiene = level
        end

    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        self.bank_account = salary + self.bank_account
        return 'all about the benjamins'
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        self.happiness = self.happiness + 3
        person.happiness = person.happiness + 3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = self.happiness - 2
            person.happiness = person.happiness - 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            person.happiness = person.happiness + 1
            return 'blah blah sun blah rain'
        else 
            return 'blah blah blah blah blah'
        end

    end



end

