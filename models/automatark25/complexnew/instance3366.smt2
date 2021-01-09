(declare-const X String)
; ^(\d{3}-\d{3}-\d{4})*$
(assert (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /\.makeMeasurement\s*\x28[^\x3b]+?Array/i
(assert (not (str.in.re X (re.++ (str.to.re "/.makeMeasurement") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ";"))) (str.to.re "Array/i\x0a")))))
(check-sat)
