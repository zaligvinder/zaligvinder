(declare-const X String)
; ^([4]{1})([0-9]{12,15})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "4")) ((_ re.loop 12 15) (re.range "0" "9")) (str.to.re "\x0a")))))
; User-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (str.in.re X (str.to.re "User-Agent:etbuviaebe/eqv.bvv\x0a")))
; name\x2ecnnic\x2ecn\scom\x2Findex\.php\?tpid=\s\x5BStatic.*\x2Fbar_pl\x2Fb\.fcgi
(assert (str.in.re X (re.++ (str.to.re "name.cnnic.cn") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "com/index.php?tpid=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "[Static") (re.* re.allchar) (str.to.re "/bar_pl/b.fcgi\x0a"))))
(check-sat)
