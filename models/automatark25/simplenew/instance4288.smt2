(declare-const X String)
; cdpnode=\w+Authorization\x3aname\x2ecnnic\x2ecn
(assert (not (str.in.re X (re.++ (str.to.re "cdpnode=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Authorization:name.cnnic.cn\x0a")))))
(check-sat)
