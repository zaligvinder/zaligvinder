(declare-const X String)
; ^\w+.*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* re.allchar) (str.to.re "\x0a"))))
; ^http://([a-zA-Z0-9_\-]+)([\.][a-zA-Z0-9_\-]+)+([/][a-zA-Z0-9\~\(\)_\-]*)+([\.][a-zA-Z0-9\(\)_\-]+)*$
(assert (not (str.in.re X (re.++ (str.to.re "http://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.+ (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))))) (re.+ (re.++ (str.to.re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "~") (str.to.re "(") (str.to.re ")") (str.to.re "_") (str.to.re "-"))))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "(") (str.to.re ")") (str.to.re "_") (str.to.re "-"))))) (str.to.re "\x0a")))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a"))))
; ^\d{9}[\d|X]$
(assert (str.in.re X (re.++ ((_ re.loop 9 9) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to.re "|") (str.to.re "X")) (str.to.re "\x0a"))))
(check-sat)
