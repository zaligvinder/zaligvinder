(declare-const X String)
; Host\u{3a}SoftwareHost\u{3A}jokeWEBCAM-Server\u{3a}
(assert (str.in_re X (str.to_re "Host:SoftwareHost:jokeWEBCAM-Server:\u{a}")))
(check-sat)
