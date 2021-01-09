(declare-const X String)
; /[a-z]{2}_[a-z0-9]{8}\.mod/Ui
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "_") ((_ re.loop 8 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".mod/Ui\x0a"))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a"))))
(check-sat)
