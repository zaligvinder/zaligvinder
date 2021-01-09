(declare-const X String)
; snprtz\x7Cdialnoref\x3D\x25user\x5FidPG=SPEEDBAR
(assert (not (str.in.re X (str.to.re "snprtz|dialnoref=%user_idPG=SPEEDBAR\x0a"))))
(check-sat)
