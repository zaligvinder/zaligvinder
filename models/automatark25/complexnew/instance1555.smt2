(declare-const X String)
; ^/{1}(((/{1}\.{1})?[a-zA-Z0-9 ]+/?)+(\.{1}[a-zA-Z0-9]{2,4})?)$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "/")) (str.to.re "\x0a") (re.+ (re.++ (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "/")) ((_ re.loop 1 1) (str.to.re ".")))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " "))) (re.opt (str.to.re "/")))) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))))
; /\/[a-zA-Z_-]+\.ee$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".ee/U\x0a"))))
; \x2APORT2\x2Acdpnode=Host\x3A
(assert (not (str.in.re X (str.to.re "*PORT2*cdpnode=Host:\x0a"))))
; Theef2offers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "Theef2offers.bullseye-network.com\x0a")))
; /[^\x0d\x0a\x09\x20-\x7e]{4}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "\x09") (re.range " " "~"))) (str.to.re "/P\x0a")))))
(check-sat)
