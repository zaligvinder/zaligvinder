(declare-const X String)
; /\*[^\/]+/
(assert (str.in.re X (re.++ (str.to.re "/*") (re.+ (re.comp (str.to.re "/"))) (str.to.re "/\x0a"))))
; /\x2exspf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.xspf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; CommonName.*st=\s+Contactfrom=GhostVoiceServerUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "CommonName") (re.* re.allchar) (str.to.re "st=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Contactfrom=GhostVoiceServerUser-Agent:\x0a")))))
(check-sat)
