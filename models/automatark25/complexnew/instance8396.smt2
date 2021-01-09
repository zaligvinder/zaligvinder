(declare-const X String)
; started\x2E.*\/cgi-bin\/PopupV
(assert (str.in.re X (re.++ (str.to.re "started.") (re.* re.allchar) (str.to.re "/cgi-bin/PopupV\x0a"))))
; ^([a-zA-Z0-9\-]{2,80})$
(assert (str.in.re X (re.++ ((_ re.loop 2 80) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re "\x0a"))))
(check-sat)
