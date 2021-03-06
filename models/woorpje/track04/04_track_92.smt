(set-logic QF_S)
(declare-fun B () String)
(declare-fun A () String)
(assert (= (str.++  "bbdcabcabcaadbdacdcabcaacdcadacbdaddbabccdbacadcddccdcadbdbbcdaccbddccdabaddababdd" "")  (str.++  "bbdcabcabcaadbdac" B "dbbcdaccbddccdabaddababdd") ))
(assert (= (str.++  "ccbbaddcacba" A "bddcacabccbbddabacaaba")  (str.++  "ccbbaddcac" B "dacdaddbcdabbbdcbddcacabccbbddabacaaba") ))
(assert (= (str.++  "babbbdadabaaccadaabdbcc" A "abbd")  (str.++  "babbbdadabaa" B "cdcacbccacabbd") ))
(assert (= (str.++  "aabacdabdbcabbddabcdacacdabbddcbccd" B "abadbddcdaba")  (str.++  "aabacdabdbcabbddabcdacacdabbd" A "d" B "abadbddcdaba") ))
(assert (= (str.++  "bbccbaaddbaaddacdcbddcb" A "dcdcbaccbbbddadadaaacbaaadddaacabaccdcbdaccbcaaaccacaa")  (str.++  "bbccbaaddbaaddacdcbddcbdcbccdcdcbaccbbbddadadaaacbaaadddaacabaccdcbdaccbcaaaccacaa" "") ))
(assert (= (str.++  "bddcbdcbcddcbaabcccbdaacdcbcdabbcdcaadcacad" A "bcdcbabcdcaabcdddcacaaaaddddaddbbd")  (str.++  "bddcbdcbcddcbaabcccbdaacdcbcdabbcdcaadcacad" A "bcdcbabcdcaabcdddcacaaaaddddaddbbd") ))
(assert (= (str.++  "bcdbccdbabddcdcaaddcdacbbcdbaddbddcbcccaaaddacaaddadaddddbadcbaaccaabbbdbbacadcabd" "")  (str.++  "bcdbccdbabddcdcaaddcdacbbcdbaddbd" A "caaaddacaaddadaddddbadcbaaccaabbbdbbacadcabd") ))
(assert (= (str.++  "cacaaccbbbbdabdbbacaacdacccadbcaadcabd" A "dddacdaaaacbabadabababacacadccccabbcbdb")  (str.++  "cacaaccbbbbdabdbbacaacdacccadbcaadcabd" A "dddacdaaaacbabadabababacacadccccabbcbdb") ))
(assert (= (str.++  "aadbcacdaadcababaddbcdadccacbcdddcaacbacaa" A "bcbccdcdbccdcbbcdbacdcaababdabaddcb")  (str.++  "aadbcacdaadcababaddbcdadccacbcdddcaacbacaadcbccbcbccdcdbccdcbbcdbacdcaababdabaddcb" "") ))
(assert (= (str.++  "ddcbdabdcdbccdacccdbc" A "cbcabbddaddbdbbdabbccdbcbaacbbdbcadccaaacaabacdaababddba")  (str.++  "ddcbdabdcdbccdacccdbc" A "cbcabbddaddbdbbdabbccdbcbaacbbdbcadccaaacaabacdaababddba") ))
(assert (= (str.++  "abdbbcdaddadabdcbcdcbdbdddcabbdddcbccdddcabdabdbababddabdaaaabcbaacbdaddbbacadccda" "")  (str.++  "abdbbcdaddadabdcbcdcbdbdddcabbdd" A "dddcabdabdbababddabdaaaabcbaacbdaddbbacadccda") ))
(assert (= (str.++  "cacacadccaaddddaddcdbbbccbdbbdbdcbccbbacbdbbdabcdabccacbbaddbaabcbbdbcdbccabadcdba" "")  (str.++  "cacacadccaaddddaddcdbbbccbdbbdb" A "bbacbdbbdabcdabccacbbaddbaabcbbdbcdbccabadcdba") ))
(assert (= (str.++  "dcbacbccbdcdbbacdcbccbddddcdcaabcdacaaccaadaaccbccdccbbbcddbabddbdccabccbaaccdbadb" "")  (str.++  "dcbacbccbdcdbbac" A "bddddcdcaabcdacaaccaadaaccbccdccbbbcddbabddbdccabccbaaccdbadb") ))
(assert (= (str.++  "bcbbbbdbcaadaaddabdbddbcaaadbdacabcddacbaaccaadddcdbdcbccddcacacacbdabbabdddbacabc" "")  (str.++  "bcbbbbdbcaadaaddabdbddbcaaadbdacabcddacbaaccaadddcdb" A "ddcacacacbdabbabdddbacabc") ))
(assert (= (str.++  "acabcccdcbacabacbdbdbdbadddacadbcaddbbacacbacdcadbcbddcbccaadabcddacddddbaddcdaccc" "")  (str.++  "acabcccdcbacabacbdbdbdbadddacadbcaddbbacacbacdcadbcbd" A "aadabcddacddddbaddcdaccc") ))
(assert (= (str.++  "ccccaabdabbdbdccbaadbadbabcdaadaccbcaadbbdcddbccccddabcaddbcd" A "acaddcdbadbaadba")  (str.++  "ccccaabdabbdbdccbaadbadbabcdaadaccbcaadbbdcddbccccddabcaddbcd" A "acaddcdbadbaadba") ))
(assert (= (str.++  "cadcbccdbcdbbaabdbbababcddacbbccbcacbabacbcddbdadbbddaabaddbaacadbcdbcacccdcdbbdaa" "")  (str.++  "ca" A "dbcdbbaabdbbababcddacbbccbcacbabacbcddbdadbbddaabaddbaacadbcdbcacccdcdbbdaa") ))
(assert (= (str.++  "bbcbdcaacccccdddaadddbddcbccadbccadcccdaaaacadcbbcacadbcdbadcbacdbdbbccadccacadbdc" "")  (str.++  "bbcbdcaacccccdddaadddbd" A "adbccadcccdaaaacadcbbcacadbcdbadcbacdbdbbccadccacadbdc") ))
(assert (= (str.++  "cdbdbddaaaacdbcababcccadbbaaabadbadbabcdcbccbacdaabdcacccdccdaadccddacadcbcacbbadd" "")  (str.++  "cdbdbddaaaacdbcababcccadbbaaabadbadbabc" A "bacdaabdcacccdccdaadccddacadcbcacbbadd") ))
(assert (= (str.++  "dcbddabdacdbcaaba" A "dacadadcdccacccbabcaacbabcbcabcbdbcccdaaaabcacbaacbbbcaacbca")  (str.++  "dcbddabdacdbcaabadcbccdacadadcdccacccbabcaacbabcbcabcbdbcccdaaaabcacbaacbbbcaacbca" "") ))
(assert (= (str.++  "acbbaacadcdbbbbbaacbabbccdcbaaabbcdddabacacaddccbabcadcacdbdcadcdccbab" A "bbbcbcb")  (str.++  "acbbaacadcdbbbbbaacbabbccdcbaaabbcdddabacacaddccbabcadcacdbdcadcdccbabdcbccbbbcbcb" "") ))
(assert (= (str.++  "adccbdbddacdbadcbcdaacacccadbbbdbcaabaaaabddbcccdcbdbadbdcbdc" A "cadbbbbddcadadba")  (str.++  "adccbdbddacdbadcbcdaacacccadbbbdbcaabaaaabddbcccdcbdbadbdcbdcdcbcccadbbbbddcadadba" "") ))
(assert (= (str.++  "bacbaccccccccbdcdbbdbbbabbabddcdbbb" A "cbadcdbdbcccaabadbabbbcabcdddccccdddaadbba")  (str.++  "bacbaccccccccbdcdbbdbbbabbabddcdbbbdcbcccbadcdbdbcccaabadbabbbcabcdddccccdddaadbba" "") ))
(check-sat)
(get-model)
