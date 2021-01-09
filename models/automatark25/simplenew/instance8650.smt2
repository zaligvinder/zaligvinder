(declare-const X String)
; (^(\+?\-? *[0-9]+)([,0-9 ]*)([0-9 ])*$)|(^ *$)
(assert (not (str.in.re X (re.union (re.++ (re.* (re.union (str.to.re ",") (re.range "0" "9") (str.to.re " "))) (re.* (re.union (re.range "0" "9") (str.to.re " "))) (re.opt (str.to.re "+")) (re.opt (str.to.re "-")) (re.* (str.to.re " ")) (re.+ (re.range "0" "9"))) (re.++ (re.* (str.to.re " ")) (str.to.re "\x0a"))))))
(check-sat)
