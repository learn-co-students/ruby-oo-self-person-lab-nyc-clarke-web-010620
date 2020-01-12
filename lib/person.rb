class Person 
  
  attr_accessor :bank_account, :people, :happiness, :hygiene
  attr_reader :name 
  
  @@people = []
  
  def initialize(name) 
    @name = name  
    @bank_account = 25
    @@people << @name 
    @happiness = 8 
    @hygiene = 8
    
  end 
  
  def happiness
    if @happiness > 10 
      return 10 
      
    elsif @happiness < 0 
    return 0 
    
    else 
      return @happiness
    end 
  end 
  
  def hygiene
    if @hygiene > 10 
      return 10
      
      elsif @hygiene < 0 
      return 0 
      
    else 
      return @hygiene 
    end 
  end 
  
  def happy? 
    @happiness > 7 
  end 
  
  def clean?
    @hygiene > 7 
  end 
  
  def get_paid(money)
    @bank_account += money 
    return 'all about the benjamins'
  end 
  
  def take_bath
    self.hygiene += 4
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end 
  
  def work_out 
    self.hygiene -= 3
    self.happiness += 2
    return '♪ another one bites the dust ♫'
    
  end 
  
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3 
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end 
  
  def start_conversation(person, topic)
    if topic == "politics"
      return 'blah blah partisan blah lobbyist'
      self.happiness -= 2 
    
  end 
end 
    
    
end 
