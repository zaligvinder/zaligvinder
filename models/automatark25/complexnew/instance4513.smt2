(declare-const X String)
; /\u{2e}wri([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.wri") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; From\u{3a}X-Mailer\u{3A}backtrust\u{2E}comReferer\u{3a}Supremewjpropqmlpohj\u{2f}loLogsX-FILTERED-BY-GHOST\u{3a}
(assert (str.in_re X (str.to_re "From:X-Mailer:\u{13}backtrust.comReferer:Supremewjpropqmlpohj/loLogsX-FILTERED-BY-GHOST:\u{a}")))
(check-sat)
