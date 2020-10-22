# your code goes here

require "pry"


class Person


    attr_reader :name
    attr_writer :happiness, :hygiene
    attr_accessor :bank_account


    def initialize(name, bank_account=25, happiness=8, hygiene=8)
       @name = name
       @bank_account = bank_account
       @happiness = happiness
       @hygiene = hygiene
    end 

    def happiness
       @happiness.clamp(0, 10)
    end

    def hygiene
        return @hygiene = 0 if @hygiene < 0
        return @hygiene = 10 if @hygiene > 10
        @hygiene
    end
    
    def happy?
       return true if @happiness > 7
       false
    end

    def clean?
        return true if @hygiene > 7
        false
    end

    def get_paid(salary)
       @bank_account += salary
       "all about the benjamins"
    end

    def take_bath
      #   self.hygiene=(@hygiene += 4)
       self.hygiene += 4
       "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    


    def work_out
       self.happiness=(@happiness +=2)
       self.hygiene -= 3
       
       "♪ another one bites the dust ♫" 
    end

    def call_friend(friend)
       
       @friend = friend
       self.happiness +=3
       friend.happiness +=3
      
       "Hi #{friend.name}! It's #{name}. How are you?"
       end

    def start_conversation(person, topic)
       @person = person
       @topic = topic
        
       if @topic == "politics"
         self.happiness -=2
         person.happiness -=2
         'blah blah partisan blah lobbyist'
       elsif @topic == "weather"
         self.happiness +=1
         person.happiness +=1
         "blah blah sun blah rain"
       else
         "blah blah blah blah blah"
      end 
    end


       

end
