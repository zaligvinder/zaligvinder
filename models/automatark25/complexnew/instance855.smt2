(declare-const X String)
; version\s+error\*\-\*WrongUser-Agent\x3Acom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (re.++ (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "error*-*WrongUser-Agent:com/index.php?tpid=\x0a")))))
; /^POST\x20\x2f[A-F\d]{42}\x20HTTP/
(assert (str.in.re X (re.++ (str.to.re "/POST /") ((_ re.loop 42 42) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re " HTTP/\x0a"))))
; ^([012346789][0-9]{4})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9")) ((_ re.loop 4 4) (re.range "0" "9")))))
; X-OSSproxy\x3a\dMicrosoft\x2APORT3\x2AProLive\+Version\+3A
(assert (str.in.re X (re.++ (str.to.re "X-OSSproxy:") (re.range "0" "9") (str.to.re "Microsoft*PORT3*ProLive+Version+3A\x0a"))))
; ^([0-9]{3,4})$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
