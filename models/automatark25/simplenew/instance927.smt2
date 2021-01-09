(declare-const X String)
; DmInf\x5E\s+Contactfrom=GhostVoiceServerUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "DmInf^") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Contactfrom=GhostVoiceServerUser-Agent:\x0a"))))
(check-sat)
