(declare-const X String)
; (^[1]$)|(^[1]+\d*\.+\d*[1-5]$)
(assert (not (str.in.re X (re.union (str.to.re "1") (re.++ (str.to.re "\x0a") (re.+ (str.to.re "1")) (re.* (re.range "0" "9")) (re.+ (str.to.re ".")) (re.* (re.range "0" "9")) (re.range "1" "5"))))))
(check-sat)
