(declare-const X String)
; dist\x2Eatlas\x2Dia\x2EcomSpy\-LockedOnlineconnection
(assert (str.in.re X (str.to.re "dist.atlas-ia.comSpy-LockedOnlineconnection\x0a")))
; /\x2emkv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mkv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2egif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gif/i\x0a"))))
(check-sat)
