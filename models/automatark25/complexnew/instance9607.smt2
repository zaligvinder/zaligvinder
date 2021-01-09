(declare-const X String)
; /\x2Faws\d{1,5}\.jsp\x3F/i
(assert (str.in.re X (re.++ (str.to.re "//aws") ((_ re.loop 1 5) (re.range "0" "9")) (str.to.re ".jsp?/i\x0a"))))
; ^([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]*)+[ ]([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]+)+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " "))))) (str.to.re " ") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " "))))) (str.to.re "\x0a"))))
(check-sat)
