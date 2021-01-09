(declare-const X String)
; /^guid=[a-f0-9]{32}\x26state=(LOST|WORK|WAIT|RUN)/P
(assert (not (str.in.re X (re.++ (str.to.re "/guid=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&state=") (re.union (str.to.re "LOST") (str.to.re "WORK") (str.to.re "WAIT") (str.to.re "RUN")) (str.to.re "/P\x0a")))))
(check-sat)
