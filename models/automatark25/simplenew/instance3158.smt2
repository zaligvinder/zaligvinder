(declare-const X String)
; stats\u{2e}drivecleaner\u{2e}comExciteasdbiz\u{2E}biz
(assert (str.in_re X (str.to_re "stats.drivecleaner.com\u{13}Exciteasdbiz.biz\u{a}")))
(check-sat)
