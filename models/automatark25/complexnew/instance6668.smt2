(declare-const X String)
; (\'([^\'\\]*\\.)*[^\'\\]*\')+
(assert (not (str.in.re X (re.++ (re.+ (re.++ (str.to.re "'") (re.* (re.++ (re.* (re.union (str.to.re "'") (str.to.re "\x5c"))) (str.to.re "\x5c") re.allchar)) (re.* (re.union (str.to.re "'") (str.to.re "\x5c"))) (str.to.re "'"))) (str.to.re "\x0a")))))
; UI2AgentConnectedDesktopSubject\x3Aixqshv\x2fqzccsactualnames\.com
(assert (str.in.re X (str.to.re "UI2AgentConnectedDesktopSubject:ixqshv/qzccsactualnames.com\x0a")))
; Host\x3A\w+wwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "wwwfromToolbartheServer:www.searchreslt.com\x0a"))))
; Host\x3AHost\x3asidebar\.activeshopper\.com
(assert (str.in.re X (str.to.re "Host:Host:sidebar.activeshopper.com\x0a")))
; name\x2ecnnic\x2ecn\scom\x2Findex\.php\?tpid=\s\x5BStatic.*\x2Fbar_pl\x2Fb\.fcgi
(assert (str.in.re X (re.++ (str.to.re "name.cnnic.cn") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "com/index.php?tpid=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "[Static") (re.* re.allchar) (str.to.re "/bar_pl/b.fcgi\x0a"))))
(check-sat)
