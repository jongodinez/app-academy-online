require 'byebug'

# EASY

# Define a method that returns the sum of all the elements in its argument (an
# array of numbers).
def array_sum(arr)
    arr.reduce(0) { |sum, curr| sum + curr }
end

# Define a method that returns a boolean indicating whether substring is a
# substring of each string in the long_strings array.
# Hint: you may want a sub_tring? helper method
def in_all_strings?(long_strings, substring)
    long_strings.all? { |string| string.include?(substring) }
end

# Define a method that accepts a string of lower case words (no punctuation) and
# returns an array of letters that occur more than once, sorted alphabetically.
def non_unique_letters(string)
    string.chars.select { |char| letter?(char) && string.count(char) > 1 }.uniq.sort
end

def letter?(lookAhead)
    lookAhead =~ /[[:alpha:]]/
  end

# Define a method that returns an array of the longest two words (in order) in
# the method's argument. Ignore punctuation!
def strip_non_letters(word)
    word.gsub(/\W+/, '')
end

def longest_two_words(string)
    string
      .split
      .map { |word| strip_non_letters(word) }
      .sort_by { |word| word.length }[-2..-1]
end

# MEDIUM

# Define a method that takes a string of lower-case letters and returns an array
# of all the letters that do not occur in the method's argument.
def missing_letters(string)
    ('a'..'z').reject { |char| string.include?(char) }
end

# Define a method that accepts two years and returns an array of the years
# within that range (inclusive) that have no repeated digits. Hint: helper
# method?
def no_repeat_years(first_yr, last_yr)
    (first_yr..last_yr).select { |yr| not_repeat_year?(yr) }
end

def not_repeat_year?(year)
    str_year = year.to_s
    str_year.chars.uniq.length == str_year.length
end

# HARD

# Define a method that, given an array of songs at the top of the charts,
# returns the songs that only stayed on the chart for a week at a time. Each
# element corresponds to a song at the top of the charts for one particular
# week. Songs CAN reappear on the chart, but if they don't appear in consecutive
# weeks, they're "one-week wonders." Suggested strategy: find the songs that
# appear multiple times in a row and remove them. You may wish to write a helper
# method no_repeats?
def one_week_wonders(songs) 
end

def no_repeats?(songs, song, idx)
end

# Define a method that, given a string of words, returns the word that has the
# letter "c" closest to the end of it. If there's a tie, return the earlier
# word. Ignore punctuation. If there's no "c", return an empty string. You may
# wish to write the helper methods c_distance and remove_punctuation.

def for_cs_sake(string)
    min_distance, result = Float::INFINITY, ''    
    string.split.each do |word|
      formatted_word = remove_punctuation(word)
      curr_distance = c_distance(formatted_word)
      result = min_distance <= curr_distance ? result : formatted_word
      min_distance = [min_distance, curr_distance].min
    end
    result
end

def c_distance(word)
    word.reverse.index('c') || Float::INFINITY
end

def remove_punctuation(word)
    word.gsub(/\W/, '')
end

# Define a method that, given an array of numbers, returns a nested array of
# two-element arrays that each contain the start and end indices of whenever a
# number appears multiple times in a row. repeated_number_ranges([1, 1, 2]) =>
# [[0, 1]] repeated_number_ranges([1, 2, 3, 3, 4, 4, 4]) => [[2, 3], [4, 6]]

def repeated_number_ranges(arr)
    
end
