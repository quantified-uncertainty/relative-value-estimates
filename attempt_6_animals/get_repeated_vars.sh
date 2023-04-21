cat simple-reference-animals.squiggle | 
	sed "s|^//.*||g"                    | # delete lines starting with //
	sed 's|^/\*.*||g'                   | # delete lines starting with /*
	sed 's|.*\*/$||g'                   | # delete lines ending with */
	sed -e 's/\s/\n/g'                  | # transform spaces into newlines
	sort                                | # 
	uniq -c	                            | # get unique words, with count
	sort -nr                            | # sort by number of repeats
	awk '{if($1 > 2) printf $0 "\n"}'   | # only choose words which have been mention more than thrice:
	                                      # one to define, one to use, and one repeat which should be correlated
	grep -vE "[012\(\{\)\}+\[\:-]"        # delete some symbols which are not going to be variables

cat simple-reference-animals.squiggle |
  sed "s|^//.*||g"                    |
  sed 's|/\*.*||g'                    |
  sed -e 's/\s/\n/g'                  |
  sort                                |
  uniq -c                             |
  sort -nr                            | # ^same as above
  grep "\."                           | # select words with a dot in them
  awk '{if($1 > 0) printf $0 "\n"}'   | # have a threshold of 2 mentions
	                                      # 0: definition which will not have a dot
																				# 1: first usage
																				# 2: second usage 
  grep -vE "[012\(\{\)\}+\[\:-]"

