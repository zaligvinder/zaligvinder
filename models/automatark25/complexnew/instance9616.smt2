(declare-const X String)
; A + B
(assert (str.in.re X (re.++ (str.to.re "A") (re.+ (str.to.re " ")) (str.to.re " B\x0a"))))
; ^((0[1-9])|(1[0-2]))[\/\.\-]*((0[8-9])|(1[1-9]))$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.* (re.union (str.to.re "/") (str.to.re ".") (str.to.re "-"))) (re.union (re.++ (str.to.re "0") (re.range "8" "9")) (re.++ (str.to.re "1") (re.range "1" "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2emotn/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".motn/i\x0a")))))
(check-sat)
