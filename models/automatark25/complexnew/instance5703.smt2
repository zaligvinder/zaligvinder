(declare-const X String)
; /^("(\\["\\]|[^"])*"|[^\n])*$/gm
(assert (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (str.to.re "\x0a")))) (str.to.re "/gm\x0a"))))
; ^(20|23|27|30|33)-[0-9]{8}-[0-9]$
(assert (str.in.re X (re.++ (re.union (str.to.re "20") (str.to.re "23") (str.to.re "27") (str.to.re "30") (str.to.re "33")) (str.to.re "-") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
