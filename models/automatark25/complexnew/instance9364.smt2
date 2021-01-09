(declare-const X String)
; /^User-Agent\x3A[^\r\n]*TT-Bot/mi
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "TT-Bot/mi\x0a")))))
; protocolhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (str.to.re "protocolhttp://www.searchinweb.com/search.php?said=bar\x0a")))
; Toolbar[^\n\r]*url=\d+Host\x3AWelcome\x2FcommunicatortbGateCrasher
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:Welcome/communicatortbGateCrasher\x0a"))))
; ^[a-zA-Z][a-zA-Z\-' ]*[a-zA-Z ]$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "-") (str.to.re "'") (str.to.re " "))) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " ")) (str.to.re "\x0a"))))
; httphost[^\n\r]*www\x2Emaxifiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "httphost") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "www.maxifiles.com\x0a"))))
(check-sat)
