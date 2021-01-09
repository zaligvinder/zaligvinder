(declare-const X String)
; /\x2f\?[0-9a-f]{60,66}[\x3b\d]*$/U
(assert (not (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 60 66) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to.re ";") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
