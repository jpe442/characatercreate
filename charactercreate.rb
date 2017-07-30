# This is an ongoing project for a character sheet assistance
# program using what I have learned in Ruby language so far...

# Here are the main data structures and Classes and whatever else I need...
character_hash = {}
alignments = ['chaotic good', 'chaotic evil', 'chaotic neutral', 'true neutral', 'lawful good', 'lawful evil', 'lawful neutral']

# This is the primary class defintion. It will be doing most of the heavy lifting (contain most of the primary methods).
class Character
    
    def initialize(name)
        @name = name
        puts "#{name}, okay that is a good name!"
    end
    
    def set_gender(gender)
        genders = ['male', 'female']
        if genders.include?(gender)
            $char_gender_valid = true
            @gender = gender
            case gender
                when "male" then puts "Okay your character is male..."
                when "female" then puts "Okay your characeter is female"
            end
        else
            puts "That is not a valid gender..."
        end
        
    end
    
    def set_race(race)
        # Will set race. Will set speed.
        races = ['human', 'elf', 'dwarf']
        if races.include?(race)
            $char_race_valid = true
            @race = race
            case race
                when "human" then puts "Excellent choice, humans are a very versatile race for many classes..."
                when "elf" then puts "Excellent choice, the ancient elves are wise and nimble..."
                when "dwarf" then puts "Excellent choice, the dwarves are powerful and hardy adventurers..."
            end 
        else
            puts "That is not a valid race. Try again..."
        end
    end   

    
    def set_alignment(align)
        @align = align
    end
    
    # Set class will set class, attributes
    def set_class(char_class)
        classes = ['fighter', 'wizard', 'rogue', 'cleric']
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
puts "Welcome to Josh's 'Character Creator'! This program will assist you in creating the core
attributes of a new lvl 1 character."
        
# The program asks the name of your character and initializes the class instance of your character.
puts "First, enter the name of the character whom you will be building..."
char_name = gets.chomp
character = Character.new(char_name)
        
# The program asks for gender of character from male or female.
$char_gender_valid = false
until $char_gender_valid == true
    puts "Now, we need to know what gender your character is, Male or Female please..."
    char_gender = gets.downcase.chomp
    character.set_gender(char_gender)
end

# The program will prompt for race choice for your character is until valid entry...
$char_race_valid = false
until $char_race_valid == true
    puts "What race is your character? You may choose from Human, Elf, or Dwarf."
    char_race = gets.downcase.chomp
    character.set_race(char_race)
end
        
if char_race == "human"
  puts "Since you have chosen human, you will receive +1 to all your attributes..."
elsif char_race == "dwarf"
  puts "Since you have chosen dwarf, you will receive +2 to your constitution
  and strength attributes..."
elsif char_race == "elf"
  puts "Since you have chosen elf, you will receive +2 to your dexterity and wisdom
  attributes..."
else
  puts "Not a valid entry..."
end

            

# If chosen a valid race we move on to class...
puts "Please enter a class..."
puts "Choose from:"
puts "FIGHTER"
puts "WIZARD"
puts "CLERIC"
puts "ROUGE"

# This part will prompt for valid class until provided...
$char_class_valid = false
until $char_class_valid == true
    char_class = gets.chomp
end


puts "Now let's get your attributes put together..."
puts "<press ENTER to continue>"
gets.chomp






















