(declare-const X String)
; /\x2ewmf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wmf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x2etorrent([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.torrent") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2eswf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".swf/i\x0a")))))
(check-sat)
