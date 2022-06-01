(declare-const X String)
; %3fc=UI2GmbHbacktrust\u{2E}comSpediaReferer\u{3A}Subject\u{3a}Host\u{3a}passcorrect\u{3B}
(assert (str.in_re X (str.to_re "%3fc=UI2GmbHbacktrust.comSpediaReferer:Subject:Host:passcorrect;\u{a}")))
(check-sat)
