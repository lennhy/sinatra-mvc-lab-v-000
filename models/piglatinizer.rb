class PigLatinizer

  def piglatinize(word)
    if word[0].downcase.match(/[b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z]/)
      before_first_vowel = (word.match(/\w[^AEIOUaeiou]*/)).to_s
      word.sub(before_first_vowel,"" ) + before_first_vowel + "ay"
    else
    	word + "way"
    end
  end

  def to_pig_latin(words)
    string = []
	  words.split(" ").map do |word|
		  string << piglatinize(word)
	  end
	  string.join(" ")
  end

end
