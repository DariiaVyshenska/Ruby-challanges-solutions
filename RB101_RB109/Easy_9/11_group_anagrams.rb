def group_anagram(arr)
  arr.group_by { |word| word.chars.sort.join }.each { |_, anagrams| p anagrams}
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

group_anagram(words)
