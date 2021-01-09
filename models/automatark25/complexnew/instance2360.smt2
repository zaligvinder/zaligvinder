(declare-const X String)
; ((https?|ftp|gopher|telnet|file|notes|ms-help):((//)|(\\\\))+[\w\d:#@%/;$()~_\+-=\\\.&]*)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "http") (re.opt (str.to.re "s"))) (str.to.re "ftp") (str.to.re "gopher") (str.to.re "telnet") (str.to.re "file") (str.to.re "notes") (str.to.re "ms-help")) (str.to.re ":") (re.+ (re.union (str.to.re "//") (str.to.re "\x5c\x5c"))) (re.* (re.union (re.range "0" "9") (str.to.re ":") (str.to.re "#") (str.to.re "@") (str.to.re "%") (str.to.re "/") (str.to.re ";") (str.to.re "$") (str.to.re "(") (str.to.re ")") (str.to.re "~") (str.to.re "_") (re.range "+" "=") (str.to.re "\x5c") (str.to.re ".") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
; corep\x2Edmcast\x2Ecom\s+FunWebProducts\sMycount\x2Eyok\x2EcomProBuilt-inBasicYWRtaW46cGFzc3dvcmQ
(assert (not (str.in.re X (re.++ (str.to.re "corep.dmcast.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "FunWebProducts") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Mycount.yok.comProBuilt-inBasicYWRtaW46cGFzc3dvcmQ\x0a")))))
; CD\x2F\.ico\x2FsLogearch195\.225\.
(assert (not (str.in.re X (str.to.re "CD/.ico/sLogearch195.225.\x0a"))))
(check-sat)
