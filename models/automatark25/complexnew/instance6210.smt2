(declare-const X String)
; bind\w+Owner\x3A\dBetaWordixqshv\x2fqzccs
(assert (str.in.re X (re.++ (str.to.re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.range "0" "9") (str.to.re "BetaWordixqshv/qzccs\x0a"))))
; /TimeToLive=[^&]*?(%60|\x60)/iP
(assert (str.in.re X (re.++ (str.to.re "/TimeToLive=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "%60") (str.to.re "`")) (str.to.re "/iP\x0a"))))
; ^(0[1-9]|1[0-2])\/((0[1-9]|2\d)|3[0-1])\/(19\d\d|200[0-3])$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (str.to.re "3") (re.range "0" "1")) (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "2") (re.range "0" "9"))) (str.to.re "/") (re.union (re.++ (str.to.re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "200") (re.range "0" "3"))) (str.to.re "\x0a"))))
(check-sat)
