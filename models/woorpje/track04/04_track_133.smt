(set-logic QF_S)
(declare-fun C () String)
(declare-fun D () String)
(declare-fun A () String)
(assert (= (str.++  "cdbbdbbbbac" D "bcddccbbb")  (str.++  "cdbbdbbbbacbbcbdabb" C "bbb") ))
(assert (= (str.++  "aadabbbdaadcbbdbdcdbcccdac" A "bbcbccacccadbbc")  (str.++  "aadabbbdaadcbbdbdcdbcccdac" A "bbcbccacccadbbc") ))
(assert (= (str.++  "ddbddccbddccbbddbabbaaaabaaacbbbcbbaddaa" A "c")  (str.++  "ddbddccbddccbbddbabbaaaabaaacbbbcbbaddaa" A "c") ))
(assert (= (str.++  "dccbacbbaadab" A "dabdcbacadcbdcbacbbcacbdbadc")  (str.++  "dccbacbbaadababbbbadabdcbacadcbdcbacbbcacbdbadc" "") ))
(assert (= (str.++  "dcaaabbbbabbdbcbdabaccbaabdaacdbddbcdddcbaabcaa" "")  (str.++  "dcaa" A "bbdbcbdabaccbaabdaacdbddbcdddcbaabcaa") ))
(assert (= (str.++  "ababbbbaaabbdbbabacadcbbabcccbddbbddacccbbcddcc" "")  (str.++  "ab" A "aabbdbbabacadcbbabcccbddbbddacccbbcddcc") ))
(assert (= (str.++  "aaaaddddbb" A "abacabcdbcaaaacacddcdcdccdbaadd")  (str.++  "aaaaddddbb" A "abacabcdbcaaaacacddcdcdccdbaadd") ))
(assert (= (str.++  "cbcbaaddbaaaacbdccddcaccdbcbcabccdac" A "daada")  (str.++  "cbcbaaddbaaaacbdccddcaccdbcbcabccdacabbbbadaada" "") ))
(check-sat)
(get-model)
