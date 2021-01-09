(declare-const X String)
; ^([a-zA-Z][a-zA-Z\&\-\.\'\s]*|)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "&") (str.to.re "-") (str.to.re ".") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; fsbuffshprrprt-cs-Host\x3A
(assert (not (str.in.re X (str.to.re "fsbuffshprrprt-cs-\x13Host:\x0a"))))
; /^\x2fnosignal\.jpg\?\d\.\d+$/U
(assert (str.in.re X (re.++ (str.to.re "//nosignal.jpg?") (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a"))))
; User-Agent\x3a\s+Host\x3AnamediepluginHost\x3AX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:namediepluginHost:X-Mailer:\x13\x0a"))))
; 3A\d+Host\x3AHWAEUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "3A") (re.+ (re.range "0" "9")) (str.to.re "Host:HWAEUser-Agent:\x0a"))))
(check-sat)
