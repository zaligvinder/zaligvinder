(declare-const X String)
; /\/jlnp\.html$/U
(assert (str.in.re X (str.to.re "//jlnp.html/U\x0a")))
; \x2Fcs\x2Fpop4\x2FA-Spywww\x2Eyoogee\x2Ecom
(assert (str.in.re X (str.to.re "/cs/pop4/A-Spywww.yoogee.com\x13\x0a")))
; ^(20|23|27|30|33)-[0-9]{8}-[0-9]$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "20") (str.to.re "23") (str.to.re "27") (str.to.re "30") (str.to.re "33")) (str.to.re "-") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a")))))
; ^[a-zA-Z_:]+[a-zA-Z_:\-\.\d]*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":") (str.to.re "-") (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
