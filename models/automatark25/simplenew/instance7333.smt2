(declare-const X String)
; /\?inf\=[0-9a-f]{8}\x2Ex\d{2}\x2E\d{8}\x2E/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/?inf=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re ".x") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "./Ui\x0a")))))
(check-sat)
