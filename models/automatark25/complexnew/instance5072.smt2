(declare-const X String)
; %3fc=UI2GmbHbacktrust\u{2E}comSpediaReferer\u{3A}Subject\u{3a}Host\u{3a}passcorrect\u{3B}
(assert (not (str.in_re X (str.to_re "%3fc=UI2GmbHbacktrust.comSpediaReferer:Subject:Host:passcorrect;\u{a}"))))
; <[iI][mM][gG]([^>]*[^/>]*[/>]*[>])
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "g") (str.to_re "G")) (str.to_re "\u{a}") (re.* (re.comp (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (str.to_re ">")))))
(check-sat)
