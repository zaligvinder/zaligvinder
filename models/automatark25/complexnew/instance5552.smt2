(declare-const X String)
; ^[a-zA-Z][a-zA-Z0-9_]+$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a")))))
; %3fSupremeSoftwareoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "%3fSupremeSoftwareoffers.bullseye-network.com\x0a"))))
; ^[+]\d{2}?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$
(assert (not (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) (re.union (re.++ (str.to.re "(") (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")")) (re.++ (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")))) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\/java(rh|db)\.php$/U
(assert (not (str.in.re X (re.++ (str.to.re "//java") (re.union (str.to.re "rh") (str.to.re "db")) (str.to.re ".php/U\x0a")))))
(check-sat)
