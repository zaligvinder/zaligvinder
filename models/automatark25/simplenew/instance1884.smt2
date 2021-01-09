(declare-const X String)
; /filename=[\x22\x27]?\d\.exe[\x22\x27]?/Hi
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.range "0" "9") (str.to.re ".exe") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/Hi\x0a")))))
(check-sat)
