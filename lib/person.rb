class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene, :clean, :happy, :friend

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def clean?
        self.clean > 7
    end
     
    def happy?
        self.happiness > 7
    end
    
    def get_paid(amount)
        self.bank_account = amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @friend = friend
        self.happiness += 3
        @friend.happiness +=3
        "Hi #{@friend}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics "
            "blah blah partisan blah lobbyist"
            self.happiness += 2
            @friend.happiness -= 2
        
        elsif topic == "weather"
            "blah blah sun blah rain"
            self.happiness += 1
            @friend.happiness += 1
        
        else
            "blah blah blah blah blah"
        end
    end
end

