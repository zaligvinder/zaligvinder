(declare-const X String)
; from\u{3A}User-Agent\u{3A}ChildWebGuardian
(assert (str.in_re X (str.to_re "from:User-Agent:ChildWebGuardian\u{a}")))
(check-sat)
