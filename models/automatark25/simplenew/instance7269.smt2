(declare-const X String)
; User-Agent\u{3a}User-Agent\u{3A}Report\u{2E}Host\u{3A}fhfksjzsfu\u{2f}ahm\.uqs
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\u{a}"))))
(check-sat)
