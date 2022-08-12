class Person

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def name
        @name
    end

    def bank_account
        @bank_account
    end

    def bank_account=(value)
        @bank_account = value
    end

    def happiness
        @happiness
    end

    def happiness=(value)
        @happiness = if value < 0
                            0
                        elsif value > 10
                            10
                        else value
                    end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(value)
        @hygiene = if value < 0
                        0
                    elsif value > 10
                        10
                    else value
                end
    end

    def clean?
        if @hygiene > 7
            true
        else false
        end
    end

    def happy?
        if @happiness > 7
            true
        else false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end




end