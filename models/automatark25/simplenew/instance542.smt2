(declare-const X String)
; ^[A-Z][a-z]+(o(i|u)(n|(v)?r(t)?|s|t|x)(e(s)?)?)$
(assert (str.in_re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to_re "\u{a}o") (re.union (str.to_re "i") (str.to_re "u")) (re.union (str.to_re "n") (re.++ (re.opt (str.to_re "v")) (str.to_re "r") (re.opt (str.to_re "t"))) (str.to_re "s") (str.to_re "t") (str.to_re "x")) (re.opt (re.++ (str.to_re "e") (re.opt (str.to_re "s")))))))
(check-sat)
