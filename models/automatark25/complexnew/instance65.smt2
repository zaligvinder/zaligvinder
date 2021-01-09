(declare-const X String)
; ^(GB)?([0-9]{9})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "GB")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(000-)(\\d{5}-){2}\\d{3}$
(assert (str.in.re X (re.++ (str.to.re "000-") ((_ re.loop 2 2) (re.++ (str.to.re "\x5c") ((_ re.loop 5 5) (str.to.re "d")) (str.to.re "-"))) (str.to.re "\x5c") ((_ re.loop 3 3) (str.to.re "d")) (str.to.re "\x0a"))))
; (\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2})|(\d{3}\.\d{3}\.\d{3}\-\d{2})
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))))))
; /\x2fkills\x2etxt\x3f(t\d|p)\x3d\d{6}$/U
(assert (str.in.re X (re.++ (str.to.re "//kills.txt?") (re.union (re.++ (str.to.re "t") (re.range "0" "9")) (str.to.re "p")) (str.to.re "=") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
