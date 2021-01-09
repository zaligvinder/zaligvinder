(declare-const X String)
; /filename=[^\n]*\x2easx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asx/i\x0a")))))
; ([0-0]{1}[1-9]{1}[0-9]{9})|[1-9]{1}[0-9]{9}
(assert (str.in.re X (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
; (^1300\d{6}$)|(^1800|1900|1902\d{6}$)|(^0[2|3|7|8]{1}[0-9]{8}$)|(^13\d{4}$)|(^04\d{2,3}\d{6}$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "1300") ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "|") (str.to.re "3") (str.to.re "7") (str.to.re "8"))) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to.re "13") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "\x0a04") ((_ re.loop 2 3) (re.range "0" "9")) ((_ re.loop 6 6) (re.range "0" "9"))) (str.to.re "1800") (str.to.re "1900") (re.++ (str.to.re "1902") ((_ re.loop 6 6) (re.range "0" "9")))))))
; PortweatherX-Mailer\x3aUser-Agent\x3AToolbar
(assert (str.in.re X (str.to.re "PortweatherX-Mailer:\x13User-Agent:Toolbar\x0a")))
(check-sat)
