class Anagram
  def initialize(my_word)
    @myword = my_word
  end

  def match(strs_arr)
    remove_myword_dup(strs_arr).select do |w|
      dw_sort_str(w) == dw_sort_str(@myword)
    end
  end

  private

  def dw_sort_str(str)
    str.downcase.chars.sort.join
  end

  def remove_myword_dup(arr)
    arr.sort.delete_if { |w| w.downcase == @myword.downcase }
  end
end
