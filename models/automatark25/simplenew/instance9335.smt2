(declare-const X String)
; Readydoarauzeraqf\u{2f}vvv\.ulPALTALKHello\u{2E}MyAgentUser-Agent\u{3A}IP-FILEUser-Agent\u{3A}User-Agent\u{3A}
(assert (str.in_re X (str.to_re "Readydoarauzeraqf/vvv.ulPALTALKHello.MyAgentUser-Agent:IP-FILEUser-Agent:User-Agent:\u{a}")))
(check-sat)
