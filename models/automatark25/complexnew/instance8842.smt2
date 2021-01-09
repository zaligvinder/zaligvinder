(declare-const X String)
; Server\.exeHWPEServer\x3aHost\x3A
(assert (not (str.in.re X (str.to.re "Server.exeHWPEServer:Host:\x0a"))))
; User-Agent\x3a\stoWebupdate\.cgi
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toWebupdate.cgi\x0a"))))
; /\x2ejpx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jpx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
