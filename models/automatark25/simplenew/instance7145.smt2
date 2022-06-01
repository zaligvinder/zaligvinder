(declare-const X String)
; User-Agent\u{3A}User-Agent\u{3a}URLencoderthis\u{7C}Connected
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:URLencoderthis|Connected\u{a}")))
(check-sat)
