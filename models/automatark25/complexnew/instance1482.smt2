(declare-const X String)
; /filename=[^\n]*\x2ebak/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bak/i\x0a"))))
; EIcdpnode=reportUID\x2FServertoX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "EIcdpnode=reportUID/ServertoX-Mailer:\x13\x0a"))))
; \b([2-9][p-z][a-h][2-9]{1,2}[a-z]+[p-z][2-9][p-z][2-9][p-z]|[a-z][a-z]+\d{2}[a-z]|[2-9][p-z]{2}[a-h][2-9]{1,2}[a-z]+[p-z][2-9]{3}[p-z]|\d{12}|[2-9][p-z][a-h][2-9][a-z0-9]+[p-z][2-9]{3}[p-z])\b
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "2" "9") (re.range "p" "z") (re.range "a" "h") ((_ re.loop 1 2) (re.range "2" "9")) (re.+ (re.range "a" "z")) (re.range "p" "z") (re.range "2" "9") (re.range "p" "z") (re.range "2" "9") (re.range "p" "z")) (re.++ (re.range "a" "z") (re.+ (re.range "a" "z")) ((_ re.loop 2 2) (re.range "0" "9")) (re.range "a" "z")) (re.++ (re.range "2" "9") ((_ re.loop 2 2) (re.range "p" "z")) (re.range "a" "h") ((_ re.loop 1 2) (re.range "2" "9")) (re.+ (re.range "a" "z")) (re.range "p" "z") ((_ re.loop 3 3) (re.range "2" "9")) (re.range "p" "z")) ((_ re.loop 12 12) (re.range "0" "9")) (re.++ (re.range "2" "9") (re.range "p" "z") (re.range "a" "h") (re.range "2" "9") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.range "p" "z") ((_ re.loop 3 3) (re.range "2" "9")) (re.range "p" "z"))) (str.to.re "\x0a"))))
; ((0)+(\.[1-9](\d)?))|((0)+(\.(\d)[1-9]+))|(([1-9]+(0)?)+(\.\d+)?)|(([1-9]+(0)?)+(\.\d+)?)
(assert (str.in.re X (re.union (re.++ (re.+ (str.to.re "0")) (str.to.re ".") (re.range "1" "9") (re.opt (re.range "0" "9"))) (re.++ (re.+ (str.to.re "0")) (str.to.re ".") (re.range "0" "9") (re.+ (re.range "1" "9"))) (re.++ (re.+ (re.++ (re.+ (re.range "1" "9")) (re.opt (str.to.re "0")))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to.re "\x0a") (re.+ (re.++ (re.+ (re.range "1" "9")) (re.opt (str.to.re "0")))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))))))
; /filename=[^\n]*\x2ezip/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".zip/i\x0a")))))
(check-sat)
