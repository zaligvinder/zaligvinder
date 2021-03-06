(set-logic QF_S)
(declare-fun B () String)
(declare-fun A () String)
(declare-fun C () String)
(declare-fun D () String)
(assert (= (str.++  B "d" C "cabcaadccccdbcbcb")  (str.++  "bddcdbacddbdaaabdcaaccccbaadbacabcaadccccdbcbcb" "") ))
(assert (= (str.++  "abbaaabcdabbdbbcddb" B "ddddaaa")  (str.++  "abbaaabcdabbdbbc" D "babadaddaaccabaabddddaaa") ))
(assert (= (str.++  "bcaaaabbaadbcccaacbcbadadaacdaccdbdbdaccaaaccbc" "")  (str.++  "bcaaaabbaadbcccaacbcbadadaacda" A "bdbdaccaaaccbc") ))
(assert (= (str.++  "dadaabaabacadabcdabbdcaacddcaddcda" A "dabddccaca")  (str.++  "dadaabaabacadabcdabbdcaacddcaddcda" A "dabddccaca") ))
(assert (= (str.++  "dabcaabbccdbddbddbbbbacaddbdcacabacddddcaadcabb" "")  (str.++  "dabcaabb" A "bddbddbbbbacaddbdcacabacddddcaadcabb") ))
(assert (= (str.++  "bbdaadbcababdbaabbccaaabbaabbbaccbdaa" A "bbcdadc")  (str.++  "bbdaadbcababdbaabbccaaabbaabbbaccbdaa" A "bbcdadc") ))
(assert (= (str.++  "aacbbbaccccabcbaaabaacccaabcdacbadacdaadcbdc" A)  (str.++  "aacbbbaccccabcbaaabaacccaabcdacbadacdaadcbdcccd" "") ))
(assert (= (str.++  "bcdcbcbdbaddabdbbcbbaaddaadbcdbacdbbaccdabcaaab" "")  (str.++  "bcdcbcbdbaddabdbbcbbaaddaadbcdbacdbba" A "abcaaab") ))
(assert (= (str.++  "adccbcacbaaabbbbbcdbdaadcdccdcaacdaccbacabdbcdc" "")  (str.++  "adccbcacbaaabbbbbcdbdaadcd" A "caacdaccbacabdbcdc") ))
(check-sat)
(get-model)
