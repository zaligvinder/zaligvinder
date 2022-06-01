(declare-const X String)
; about\d+yxegtd\u{2f}efcwgHost\u{3A}TPSystemwww\u{2E}e-finder\u{2E}cc
(assert (not (str.in_re X (re.++ (str.to_re "about") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystemwww.e-finder.cc\u{a}")))))
; [^a-zA-Z0-9]+
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; Host\u{3a}Subject\u{3A}ClientnamedFrom\u{3A}
(assert (str.in_re X (str.to_re "Host:Subject:ClientnamedFrom:\u{a}")))
; \.fcgi[^\n\r]*Host\u{3A}\s\u{5D}\u{25}20\u{5B}Port_NETObserveTM_SEARCH3
(assert (str.in_re X (re.++ (str.to_re ".fcgi") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "]%20[Port_NETObserveTM_SEARCH3\u{a}"))))
(check-sat)
