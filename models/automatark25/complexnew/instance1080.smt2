(declare-const X String)
; ((\d{1,5})*\.*(\d{0,3})"[W|D|H|DIA][X|\s]).*
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a") (re.* ((_ re.loop 1 5) (re.range "0" "9"))) (re.* (str.to.re ".")) ((_ re.loop 0 3) (re.range "0" "9")) (str.to.re "\x22") (re.union (str.to.re "W") (str.to.re "|") (str.to.re "D") (str.to.re "H") (str.to.re "I") (str.to.re "A")) (re.union (str.to.re "X") (str.to.re "|") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))
; /filename=[^\n]*\x2emny/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mny/i\x0a"))))
; Host\x3A\s+www\x2Eyoogee\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.yoogee.com\x13\x0a")))))
; ^[-+]?(\d?\d?\d?,?)?(\d{3}\,?)*(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.opt (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to.re ",")))) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ",")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^\d{10}$
(assert (str.in.re X (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
