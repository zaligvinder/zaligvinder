(declare-const X String)
; \b[^aeiou]+[aeiou][^aeiou]+\b
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u"))) (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u")) (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u"))) (str.to.re "\x0a"))))
; (1 )?\d{3} \d{3}-\d{4}
(assert (str.in.re X (re.++ (re.opt (str.to.re "1 ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
