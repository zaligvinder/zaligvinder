(declare-const X String)
; snprtz\x7Cdialnoref\x3D\x25user\x5FidPG=SPEEDBAR
(assert (str.in.re X (str.to.re "snprtz|dialnoref=%user_idPG=SPEEDBAR\x0a")))
; ^\d{2,6}-\d{2}-\d$
(assert (str.in.re X (re.++ ((_ re.loop 2 6) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
