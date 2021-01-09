(declare-const X String)
; version\s+error\*\-\*WrongUser-Agent\x3Acom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (re.++ (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "error*-*WrongUser-Agent:com/index.php?tpid=\x0a")))))
(check-sat)
