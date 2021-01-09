(declare-const X String)
; [A-Za-z]{1,2}[\d]{1,2}[A-Za-z]{0,1}\s*[\d]
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (str.to.re "\x0a")))))
; ^[A-Z][a-z]+(o(i|u)(n|(v)?r(t)?|s|t|x)(e(s)?)?)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0ao") (re.union (str.to.re "i") (str.to.re "u")) (re.union (str.to.re "n") (re.++ (re.opt (str.to.re "v")) (str.to.re "r") (re.opt (str.to.re "t"))) (str.to.re "s") (str.to.re "t") (str.to.re "x")) (re.opt (re.++ (str.to.re "e") (re.opt (str.to.re "s")))))))
(check-sat)
