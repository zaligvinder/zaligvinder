(declare-const X String)
; subject\x3Anode=LoginNSIS_DOWNLOAD
(assert (str.in.re X (str.to.re "subject:node=LoginNSIS_DOWNLOAD\x0a")))
; /\x2edir([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.dir") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
