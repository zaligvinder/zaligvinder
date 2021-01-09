(declare-const X String)
; /\.makeMeasurement\s*\x28[^\x3b]+?Array/i
(assert (str.in.re X (re.++ (str.to.re "/.makeMeasurement") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ";"))) (str.to.re "Array/i\x0a"))))
; ^\.([rR]([aA][rR]|\d{2})|(\d{3})?)$
(assert (str.in.re X (re.++ (str.to.re ".") (re.union (re.++ (re.union (str.to.re "r") (str.to.re "R")) (re.union (re.++ (re.union (str.to.re "a") (str.to.re "A")) (re.union (str.to.re "r") (str.to.re "R"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.opt ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (str.in.re X (str.to.re "Handyst=ClassStopperHost:SpamBlockerUtility\x0a")))
; ^([0-1]?[0-9]|[2][0-3])[:|.]([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.union (str.to.re ":") (str.to.re "|") (str.to.re ".")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
