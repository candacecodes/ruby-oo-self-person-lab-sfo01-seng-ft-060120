class Person
    attr_reader(:name, :happiness)
    attr_accessor(:bank_account, :hygiene)
    
    def initialize(name)
        @name = name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end
    # def happiness=(happiness)
    #     @happiness=happiness
    # end
    
    # def happiness
    #     @happiness
    # end
    def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else
            @happiness = num
        end 
    end 
    def hygiene=(num)
        if num > 10
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        else
            @hygiene = num
        end 
    end 
    def happy?
        @happiness > 7
    end
    def clean?
        @hygiene > 7
    end
    def get_paid(salary)
        @bank_account = (salary + @bank_account)
        "all about the benjamins"
    end
    def take_bath
       self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
   def work_out_happiness
        self.happiness += 2
   end
   def work_out_hygiene
        self.hygiene -= 3
   end
    def work_out
        work_out_happiness
        work_out_hygiene
        "♪ another one bites the dust ♫"
    end
    # def friend_happiness
    #     if @happiness > 10
    #         self.happiness = 10
    #     else 
    #         self.happiness += 3
    #     end
    # end
    def call_friend(friend)
        friend.happiness += 3
       self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    # The call_friend method should accept another instance of the Person class, or "friend". 
    # The method should increment the caller and the callee's happiness points by three. 
    # If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"
    
    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
           "blah blah partisan blah lobbyist"
        elsif topic == "weather"
           self.happiness += 1 
           person.happiness += 1 
          "blah blah sun blah rain"
        else 
          "blah blah blah blah blah"
          
        end 

            
        # else 
        #   politics("blah blah partisan blah lobbyist")
        #   weather("blah blah sun blah rain")

    end
end