(declare-const X String)
; /^[a-z][\w\.]+@([\w\-]+\.)+[a-z]{2,7}$/i
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (re.+ (re.union (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "."))) ((_ re.loop 2 7) (re.range "a" "z")) (str.to.re "/i\x0a"))))
; /\/jorg\.html$/U
(assert (not (str.in.re X (str.to.re "//jorg.html/U\x0a"))))
; ^[+-]?([0-9]*\.?[0-9]+|[0-9]+\.?[0-9]*)([eE][+-]?[0-9]+)?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; \b[^aeiou]+[aeiou][^aeiou]+\b
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u"))) (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u")) (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u"))) (str.to.re "\x0a"))))
(check-sat)
