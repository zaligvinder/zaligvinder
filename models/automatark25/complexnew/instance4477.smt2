(declare-const X String)
; User-Agent\x3aUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a")))
; url=Referer\x3AHost\x3AWelcome\x2FcommunicatortbGateCrasher4\x2e8\x2e4\x7D\x7BTrojan\x3AareSubject\x3a
(assert (not (str.in.re X (str.to.re "url=Referer:Host:Welcome/communicatortbGateCrasher4.8.4}{Trojan:areSubject:\x0a"))))
(check-sat)
