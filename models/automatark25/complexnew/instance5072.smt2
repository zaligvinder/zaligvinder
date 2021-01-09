(declare-const X String)
; %3fc=UI2GmbHbacktrust\x2EcomSpediaReferer\x3ASubject\x3aHost\x3apasscorrect\x3B
(assert (not (str.in.re X (str.to.re "%3fc=UI2GmbHbacktrust.comSpediaReferer:Subject:Host:passcorrect;\x0a"))))
; <[iI][mM][gG]([^>]*[^/>]*[/>]*[>])
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "g") (str.to.re "G")) (str.to.re "\x0a") (re.* (re.comp (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (str.to.re ">")))))
(check-sat)
