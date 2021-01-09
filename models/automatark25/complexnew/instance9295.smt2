(declare-const X String)
; (^(\+?\-? *[0-9]+)([,0-9 ]*)([0-9 ])*$)|(^ *$)
(assert (not (str.in.re X (re.union (re.++ (re.* (re.union (str.to.re ",") (re.range "0" "9") (str.to.re " "))) (re.* (re.union (re.range "0" "9") (str.to.re " "))) (re.opt (str.to.re "+")) (re.opt (str.to.re "-")) (re.* (str.to.re " ")) (re.+ (re.range "0" "9"))) (re.++ (re.* (str.to.re " ")) (str.to.re "\x0a"))))))
; /^\x2f[a-z0-9]{51}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 51 51) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
(check-sat)
