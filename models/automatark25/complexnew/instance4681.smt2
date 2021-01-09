(declare-const X String)
; /filename=[^\n]*\x2eflac/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".flac/i\x0a")))))
; User-Agent\x3A\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a")))))
; /\x2ebcl([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.bcl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
