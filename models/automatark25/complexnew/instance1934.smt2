(declare-const X String)
; /filename=[^\n]*\x2esvg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".svg/i\x0a")))))
; ^(20|23|27|30|33)-[0-9]{8}-[0-9]$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "20") (str.to.re "23") (str.to.re "27") (str.to.re "30") (str.to.re "33")) (str.to.re "-") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
