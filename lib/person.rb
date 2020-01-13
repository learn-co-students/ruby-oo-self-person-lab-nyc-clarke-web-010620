# your code goes here
class Person
    @@people = []
    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        @@people << self
    end
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def happiness=(happiness = 0..10)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        end
        if @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene = 0..10)
        @hygiene = hygiene
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        if happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene=(hygiene)
        @happiness += 2
        self.happiness=(happiness)
        return "♪ another one bites the dust ♫"
    end

    def self.find_by_name(name)
        @@people.find{|person| person.name == name}
    end

    def call_friend(friend)
        #friend = Person.find_by_name(friend_name)
        self.happiness += 3
        #self.happiness=
        friend.happiness += 3
        #friend.happiness=
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end