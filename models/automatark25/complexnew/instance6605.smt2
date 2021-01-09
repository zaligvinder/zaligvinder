(declare-const X String)
; Host\x3A\d+Subject\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Subject:as.starware.com/dp/search?x=\x0a")))))
; /gate\x2ephp\x3fid=[a-z]{15}/U
(assert (str.in.re X (re.++ (str.to.re "/gate.php?id=") ((_ re.loop 15 15) (re.range "a" "z")) (str.to.re "/U\x0a"))))
(check-sat)
