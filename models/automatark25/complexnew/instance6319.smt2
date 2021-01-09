(declare-const X String)
; ^[-+]?(\d?\d?\d?,?)?(\d{3}\,?)*$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.opt (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to.re ",")))) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ",")))) (str.to.re "\x0a")))))
; /\/\d+\.mp3$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".mp3/U\x0a"))))
(check-sat)
