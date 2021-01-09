(declare-const X String)
; http[s]?://[a-zA-Z0-9.-/]+
(assert (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (re.range "." "/"))) (str.to.re "\x0a"))))
; /\x2ecsv([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.csv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Toolbarwww\x2Eonlinecasinoextra\x2Ecom
(assert (str.in.re X (str.to.re "Toolbarwww.onlinecasinoextra.com\x0a")))
; Host\x3A\s+Agentbody=\x2521\x2521\x2521Optix
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13\x0a")))))
; com\x2Findex\.php\?tpid=\x7D\x7BUser\x3A
(assert (not (str.in.re X (str.to.re "com/index.php?tpid=}{User:\x0a"))))
(check-sat)
