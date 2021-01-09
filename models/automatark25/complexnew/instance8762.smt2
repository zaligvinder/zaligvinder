(declare-const X String)
; ^.{2,}$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) re.allchar) (re.* re.allchar))))
; /^\/ABs[A-Za-z0-9]+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//ABs") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; ^[a-z][a-z0-9\.,\-_]{5,31}$
(assert (not (str.in.re X (re.++ (re.range "a" "z") ((_ re.loop 5 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re ",") (str.to.re "-") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
