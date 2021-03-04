def group_anagram(arr)
  arr.group_by { |word| word.chars.sort.join }
     .each { |_, anagrams| p anagrams if anagrams.size > 1}
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon', 'somewordidontknow']

group_anagram(words)
