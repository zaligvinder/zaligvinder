(declare-const X String)
; snprtz\x7Cdialnoref\x3D\x25user\x5FidPG=SPEEDBAR
(assert (str.in.re X (str.to.re "snprtz|dialnoref=%user_idPG=SPEEDBAR\x0a")))
; \x18\x16\dsearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (not (str.in.re X (re.++ (str.to.re "\x18\x16") (re.range "0" "9") (str.to.re "search.conduit.com<logs@logs.com>\x0a")))))
(check-sat)
