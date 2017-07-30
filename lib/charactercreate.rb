# This is an ongoing project for a character sheet assistance
# program using what I have learned in Ruby language so far...

# This is the primary class defintion. It will be doing most of the heavy lifting (contain most of the primary methods).
class Character

  ALIGNMENTS = ['chaotic good', 'chaotic evil', 'chaotic neutral', 'true neutral', 'lawful good', 'lawful evil', 'lawful neutral']
    
    def initialize(name)
      @name = name
      puts "#{name}, okay that is a good name!"
    end
    
    def set_gender
      genders = ['male', 'female']
      gender_valid = false
      until gender_valid == true
        puts "Now, we need to know what gender your character is... Male or Female please..."
        char_gender = gets.downcase.chomp
        if genders.include?(char_gender)
          @gender = char_gender.to_sym
          gender_valid = true
          case @gender
          when :male then puts "Okay your character is male..."
          when :female then puts "Okay your characeter is female..."
          end
        else
          puts "That is not a valid gender..."
        end
      end
            
    end
    
    def set_race
        # Will set race. Will set speed.
      races = ['human', 'elf', 'dwarf'] 
      char_race_valid = false
        until char_race_valid
          puts "What race is your character? You may choose from Human, Elf, or Dwarf."
          char_race = gets.downcase.chomp
          if races.include?(char_race)
            char_race_valid = true
            @race = char_race.to_sym  
            case @race
            when :human
              puts "Excellent choice, humans are a very versatile race for many classes..." 
              puts "Since you have chosen human, you will receive +1 to all your attributes..."
            when :elf
              puts "Excellent choice, the ancient elves are wise and nimble..."
              puts "Since you have chosen elf, you will receive +2 to your dexterity and wisdom attributes..."
            when :dwarf
              puts "Excellent choice, the dwarves are powerful and hardy adventurers..."
              puts "Since you have chosen dwarf, you will receive +2 to your constitution and strength attributes..."
            end
          else
            puts "That is not a valid race. Try again..."
          end
        end
    end
          
    def set_alignment(align)
        @align = align
    end
    
    # Set class will set class
    def set_class
        classes = ['fighter', 'wizard', 'rogue', 'cleric']
        class_valid = false
        until class_valid
          puts "Please enter a class..."
          puts "Choose from:"
          classes.each {|clas| puts clas.upcase}
          char_class = gets.chomp
          if classes.include?(char_class)
            class_valid = true
            @class = char_class.to_sym
            case @class
            when :fighter
              puts "You have chosen fighter!"
            when :wizard
              puts "You have chosen wizard!"
            when :rogue
              puts "You have chosen rogue!"
            when :cleric
              puts "You have chosen cleric!"
            end
          else
            puts "Please enter a valid class..."
          end
        end        
    end
    
    def set_background(background)
        @background = background
    end
    
    def skills
        #makes skills hash
    end
        
    def inventory
        # Generate a character specific inventory hash
    end
    
    def hit_dice
    end
          
end

# This part is the interactive part...I will use it to frame the rest
# Title and Intro
puts "Welcome to Josh's 'Character Creator'! This program will assist you in creating the core attributes of a new lvl 1 character."    
# The program asks the name of your character and initializes the class instance of your character.
puts "First, enter the name of the character whom you will be building..."
char_name = gets.chomp
character = Character.new(char_name)
# The program asks for gender of character from male or female.
character.set_gender
# The program will prompt for race choice for your character is until valid entry...
character.set_race
# If chosen a valid race we move on to class...
# This part will prompt for valid class until provided...
character.set_class

























