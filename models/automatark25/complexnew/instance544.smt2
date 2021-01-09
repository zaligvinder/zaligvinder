(declare-const X String)
; /agent_(win|lin|mac)_helper\.jar$/siU
(assert (str.in.re X (re.++ (str.to.re "/agent_") (re.union (str.to.re "win") (str.to.re "lin") (str.to.re "mac")) (str.to.re "_helper.jar/siU\x0a"))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a")))
; /filename=[^\n]*\x2eht3/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ht3/i\x0a")))))
; /filename=[^\n]*\x2empeg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mpeg/i\x0a")))))
(check-sat)
