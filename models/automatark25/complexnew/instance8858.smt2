(declare-const X String)
; /^die\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/die|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
; YOUR.*\x2Fsearchfast\x2F\s+hostiedesksearch\.dropspam\.com\x2Fbi\x2Fservlet\x2FThinstall
(assert (not (str.in.re X (re.++ (str.to.re "YOUR") (re.* re.allchar) (str.to.re "/searchfast/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostiedesksearch.dropspam.com/bi/servlet/Thinstall\x0a")))))
; /^\/jmx.jar?r=\d+/Ui
(assert (str.in.re X (re.++ (str.to.re "//jmx") re.allchar (str.to.re "ja") (re.opt (str.to.re "r")) (str.to.re "r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; name\x2ecnnic\x2ecn\scom\x2Findex\.php\?tpid=\s\x5BStatic.*\x2Fbar_pl\x2Fb\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "name.cnnic.cn") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "com/index.php?tpid=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "[Static") (re.* re.allchar) (str.to.re "/bar_pl/b.fcgi\x0a")))))
(check-sat)
