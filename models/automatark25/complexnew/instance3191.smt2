(declare-const X String)
; ^.*(yourdomain.com).*$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.* re.allchar) (str.to.re "\x0ayourdomain") re.allchar (str.to.re "com")))))
; (^\d{5}\x2D\d{3}$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")))))
; ^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.pdf)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 2 2) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (re.+ (re.++ (str.to.re "\x5c") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.* re.allchar))) (str.to.re "\x0a") re.allchar (str.to.re "pdf")))))
; /\*.+?\*/
(assert (not (str.in.re X (re.++ (str.to.re "/*") (re.+ re.allchar) (str.to.re "*/\x0a")))))
(check-sat)
