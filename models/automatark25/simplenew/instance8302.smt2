(declare-const X String)
; /^guid=[a-f0-9]{32}\u{26}state=(LOST|WORK|WAIT|RUN)/P
(assert (str.in_re X (re.++ (str.to_re "/guid=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "&state=") (re.union (str.to_re "LOST") (str.to_re "WORK") (str.to_re "WAIT") (str.to_re "RUN")) (str.to_re "/P\u{a}"))))
(check-sat)
