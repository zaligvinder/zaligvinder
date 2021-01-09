(declare-const X String)
; act=\s+User-Agent\x3AEvilFTPHost\x3A
(assert (str.in.re X (re.++ (str.to.re "act=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:EvilFTPHost:\x0a"))))
; Toolbar\s+\x2APORT3\x2A\d+Host\x3AconfigINTERNAL\.ini
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*") (re.+ (re.range "0" "9")) (str.to.re "Host:configINTERNAL.ini\x0a")))))
; name\x2ecnnic\x2ecn\scom\x2Findex\.php\?tpid=\s\x5BStatic.*\x2Fbar_pl\x2Fb\.fcgi
(assert (str.in.re X (re.++ (str.to.re "name.cnnic.cn") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "com/index.php?tpid=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "[Static") (re.* re.allchar) (str.to.re "/bar_pl/b.fcgi\x0a"))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (str.to.re "http://www.searchinweb.com/search.php?said=bar\x0a")))
(check-sat)
