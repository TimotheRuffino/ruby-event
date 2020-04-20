require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :email

  def initialize(start_event_date, event_duration, event_title, email_list)
    @start_date = Time.parse(start_event_date)
    @duration = event_duration.to_i
    @title = event_title
    @email = email_list
    email_list = []

  end  

  def postpone_24h
    @start_date += 24*60*60
    return @start_date
  end

  def end_date
    @start_date + @duration
  end

  def is_past? 
    if @start_date <= Time.now
      true
    
    else 
      false
      
    end  
  end 

  def is_soon?
    if @start_date - Time.now <= 1800
      true
    else 
      false
    end  
  end

  def to_s
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date.to_s}"
    puts ">Durée : #{@duration.to_s} minutes"
    puts ">Invités : #{@email.join(", ")}"
  end

end

