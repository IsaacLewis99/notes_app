require_relative 'note'

class Notes_app
  def initialize
    @stored_notes = Array.new 
  end
  
  def add_note(title, body)
    note = Note.new(title, body)
    @stored_notes.push(note)
  end
  
  def create_note_prompt
    puts "Title of your note:"
    title = gets.chomp
    puts "And the body?"
    body = gets.chomp
    add_note(title, body)
  end
  
  def list_all
    @stored_notes.each do |note|
      puts note.title
    end
  end
  
  def pick_note(target_title)
    note = (@stored_notes.select { |a_note| a_note.title == target_title  })[0]
    puts note.title
    puts note.body
  end
end