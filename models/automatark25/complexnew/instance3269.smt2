(declare-const X String)
; Desktop.*Hello\x2E.*Referer\x3AToolbar
(assert (str.in.re X (re.++ (str.to.re "Desktop") (re.* re.allchar) (str.to.re "Hello.") (re.* re.allchar) (str.to.re "Referer:Toolbar\x0a"))))
; /[0-9a-fA-F]{8}[a-z]{6}.php/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) ((_ re.loop 6 6) (re.range "a" "z")) re.allchar (str.to.re "php/\x0a")))))
(check-sat)
