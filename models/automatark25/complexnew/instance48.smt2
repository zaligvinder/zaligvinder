(declare-const X String)
; from\s+\x2Fdss\x2Fcc\.2_0_0\.[^\n\r]*uploadServer
(assert (str.in.re X (re.++ (str.to.re "from") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/dss/cc.2_0_0.") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "uploadServer\x0a"))))
; ^[A-Z].*$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.* re.allchar) (str.to.re "\x0a"))))
; Host\x3A\d+UI2.*areprotocolhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "UI2") (re.* re.allchar) (str.to.re "areprotocolhttp://www.searchinweb.com/search.php?said=bar\x0a")))))
(check-sat)
