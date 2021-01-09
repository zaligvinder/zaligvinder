(declare-const X String)
; \r\nSTATUS\x3A\dHost\x3aReferer\x3AServerSubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "\x0d\x0aSTATUS:") (re.range "0" "9") (str.to.re "Host:Referer:ServerSubject:\x0a")))))
; User-Agent\x3aUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a")))
; /\x2ecnt([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.cnt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
