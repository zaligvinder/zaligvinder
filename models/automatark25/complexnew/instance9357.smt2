(declare-const X String)
; /filename=[^\n]*\x2ewmv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wmv/i\x0a")))))
; fsbuffshprrprt-cs-Host\x3A
(assert (not (str.in.re X (str.to.re "fsbuffshprrprt-cs-\x13Host:\x0a"))))
; comUser-Agent\x3Asi=PORT\x3D\x2Fpagead\x2Fads\?Host\x3a\x2Fdesktop\x2F
(assert (not (str.in.re X (str.to.re "comUser-Agent:si=PORT=/pagead/ads?Host:/desktop/\x0a"))))
; Keylogger[^\n\r]*dll\x3F\w+www2\x2einstantbuzz\x2ecom\s+Online100013Agentsvr\x5E\x5EMerlinHost\x3AHost\x3Aport
(assert (not (str.in.re X (re.++ (str.to.re "Keylogger") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www2.instantbuzz.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online100013Agentsvr^^Merlin\x13Host:Host:port\x0a")))))
(check-sat)
