(declare-const X String)
; From\x3A\w+SoftActivity\d+
(assert (not (str.in.re X (re.++ (str.to.re "From:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "SoftActivity\x13") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; /\/setup.cgi.*?TimeToLive=[^&]*?(%60|\x60)/iU
(assert (not (str.in.re X (re.++ (str.to.re "//setup") re.allchar (str.to.re "cgi") (re.* re.allchar) (str.to.re "TimeToLive=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "%60") (str.to.re "`")) (str.to.re "/iU\x0a")))))
; ^\d*((\.\d+)?)*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.* (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (str.to.re "\x0a")))))
; ^[A-Za-z0-9]{8}-[A-Za-z0-9]{4}-[A-Za-z0-9]{4}-[A-Za-z0-9]{4}-[A-Za-z0-9]{12}$
(assert (not (str.in.re X (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
