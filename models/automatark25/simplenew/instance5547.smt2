(declare-const X String)
; /User\x2dAgent\x3a\x20[A-F\d]{32}\r\n/H
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent: ") ((_ re.loop 32 32) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0d\x0a/H\x0a")))))
(check-sat)
