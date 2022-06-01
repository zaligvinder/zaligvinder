(declare-const X String)
; User-Agent\u{3a}User-Agent\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}")))
; url=Referer\u{3A}Host\u{3A}Welcome\u{2F}communicatortbGateCrasher4\u{2e}8\u{2e}4\u{7D}\u{7B}Trojan\u{3A}areSubject\u{3a}
(assert (not (str.in_re X (str.to_re "url=Referer:Host:Welcome/communicatortbGateCrasher4.8.4}{Trojan:areSubject:\u{a}"))))
(check-sat)
