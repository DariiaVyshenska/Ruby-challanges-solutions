class DNA
  def initialize(seq)
    @seq = seq
  end

  def hamming_distance(str)
    return 0 if [@seq, str].map(&:size).min.zero?

    str_s, str_l = (@seq.size > str.size ? [str, @seq] : [@seq, str])
    str_l_kmers = gen_all_kmers(str_l, str_s.size)
    str_l_kmers.map { |kmer| mut_number(str_s, kmer) }.min
  end

  private

  def mut_number(str1, str2)
    hmm_dis = 0
    str1.size.times do |idx|
      hmm_dis += 1 if str1[idx] != str2[idx]
    end
    hmm_dis
  end

  def gen_all_kmers(str, len)
    str.chars.each_cons(len).to_a.map(&:join)
  end
end

# 4. read 5 solutions for others
# 5. refactor
# 6. check with rubocop

# str_s, str_l = (str_s.size > str_l.size ? other_str, @seq : @seq, other_str)
