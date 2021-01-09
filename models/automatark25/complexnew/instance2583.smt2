(declare-const X String)
; Subject\x3A\s+www\x2eproventactics\x2ecomdownloads\x2Emorpheus\x2Ecom\x2Frotation
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.proventactics.comdownloads.morpheus.com/rotation\x0a"))))
; User-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in.re X (str.to.re "User-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\x0a"))))
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (str.in.re X (re.++ (str.to.re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GET\x0a"))))
; /^guid=[a-f0-9]{32}\x26state=(LOST|WORK|WAIT|RUN)/P
(assert (not (str.in.re X (re.++ (str.to.re "/guid=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&state=") (re.union (str.to.re "LOST") (str.to.re "WORK") (str.to.re "WAIT") (str.to.re "RUN")) (str.to.re "/P\x0a")))))
(check-sat)
