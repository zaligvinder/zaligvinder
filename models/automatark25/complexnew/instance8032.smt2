(declare-const X String)
; ^[a-zA-Z]\w{3,14}$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 3 14) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; daosearch\x2EcomSubject\x3A
(assert (str.in.re X (str.to.re "daosearch.comSubject:\x0a")))
; Remote\x3Cchat\x3EX-Mailer\x3awww\x2eproventactics\x2ecom
(assert (not (str.in.re X (str.to.re "Remote<chat>\x1bX-Mailer:\x13www.proventactics.com\x0a"))))
(check-sat)
