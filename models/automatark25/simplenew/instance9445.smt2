(declare-const X String)
; \x5BStatic\w+www\.iggsey\.comUser-Agent\x3AX-Mailer\x3aComputer
(assert (not (str.in.re X (re.++ (str.to.re "[Static") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.iggsey.comUser-Agent:X-Mailer:\x13Computer\x0a")))))
(check-sat)
