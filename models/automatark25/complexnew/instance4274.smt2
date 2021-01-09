(declare-const X String)
; /^\/999$/U
(assert (not (str.in.re X (str.to.re "//999/U\x0a"))))
; for mobile:^[0][1-9]{1}[0-9]{9}$
(assert (str.in.re X (re.++ (str.to.re "for mobile:0") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
