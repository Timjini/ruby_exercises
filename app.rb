#Adding Elements:
##add elements to string

### data sets 
mixed_arr = [10.0, 14, "cat" , 5 , 12,5 ,10]
arr = [10, 28, 98, 90]
str = "not every person is a good working person"
words = "Write a Ruby program -that takes a sentence and_ words as input+ an43d counts the 78frequency of each word. "
domains = [
    "https://google.com",
    "http://club.fit.fit",
    "www.45.com",
    "https://58c-lub.c-om",
    "facebook.com",
  ]
emails = [
    "john@gmail.com",
    "mary.en-mail_new@yahoo.new",
    "new@fmi",
    "jed.rej"
]
hash1= {
    :cars => 3,
    :bikes => 2,
    :cats => 1,
    :seats => 5
}
hash2 = {
    :cars => 4,
    :motobikes =>3,
    :dogs => 1,
    :seats => 5
}

hash_keys_length = { abc: 'hello', 'another_key' => 123, 4567 => 'third' }
#############################################

# Remove a type or variable from array
def remove_non_int(array)
  i = []
  not_i = []
    
    array.each { |a|
      a.is_a?(Integer) ? i << a : not_i << a 
    }
    # return [i,not_i] 
    return i
end

# Some up array values
def add_elements(array)
    i = 0 

    array.each  { |a|
      i += a
    }
    return i
end


#Count Characters
def count_characters(string)
    counts = {}

    string.chars.each {|char|
        if counts.include?(char)
            counts[char] += 1
        else 
            counts[char] = 1
        end
    }

    return counts

end


# Word Frequency:
def count_words(string)
    i = {}
    array = string.strip.gsub(/[\-\d\.\+\_]/, "").split(" ").map(&:downcase)

    # this is difficult to define
    # remove_plurals(array)

    array.each { |w|
        if i.include?(w)
            i[w] += 1 
        else
            i[w] = 1
        end
    }

    return i
end

def remove_plurals(array)
    array.each {|w|  w[-1] == "s" ? w.chop! : next }
    
end


# Merge Dictionaries:

def merge_hash(hash1, hash2)
    # new_hash = hash1.merge!(hash2) {|key, oldval, newval| oldval + newval }
    # return new_hash
    new_hash = {}
        
end


def check_mutation(str1, str2)
  length_str1 = str1.length
  counts = {}
    
    for a in  0...length_str1 do
      if counts.include?(str1.chars[a])
          counts[str1.chars[a]] += 1
      else
        counts[str1.chars[a]] = 1
      end
      if counts.include?(str2.chars[a])
          counts[str2.chars[a]] -= 1
      else
        counts[str2.chars[a]] = -1
      end
    end
    
  return counts
  
end


# return hash keys by length in an array

def hash_keys_length(hash)
    return hash.keys.map(&:to_s).sort_by(&:length)
end

# check domains 

def is_domain?(str)
    #            https://        www ,not two consucitive dots,characters , 2,4 character 
  !!(str =~ /\A(?:https?:\/\/)?(?:www\.)?(?!.*\.{2})[\w\-]+(?:\.[\w]{2,4}+)+\z/i)
end
# 

require 'uri'

def valid_url?(str)
  uri = URI.parse(str)
  uri.is_a?(URI::HTTP) || uri.is_a?(URI::HTTPS)
rescue URI::InvalidURIError
  false
end

# check emails 
def is_email?(str)
    !!( str =~ /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i)
end
  


################ OUTPUTS 

# puts remove_non_int(arr)
# puts add_elements(arr)
# puts count_characters(str)
# puts count_words(words)
# puts merge_hash(hash1, hash2)
# puts hash_keys_length(hash_keys_length)
# domains.each {|d| puts "#{d} is a domain:#{is_domain?(d)}"}
# emails.each {|e| puts "#{e} is email: #{is_email?(e)}" }

