(declare-const X String)
; ((\(\d{2}\) ?)|(\d{2}/))?\d{2}/\d{4} ([0-2][0-9]\:[0-6][0-9])
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " "))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/")))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " \x0a") (re.range "0" "2") (re.range "0" "9") (str.to.re ":") (re.range "0" "6") (re.range "0" "9")))))
; cdpView.*protocol.*\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in.re X (re.++ (str.to.re "cdpView") (re.* re.allchar) (str.to.re "protocol") (re.* re.allchar) (str.to.re "/s(robert@blackcastlesoft.com)\x0a"))))
(check-sat)
