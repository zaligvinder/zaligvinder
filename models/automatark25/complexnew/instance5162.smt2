(declare-const X String)
; /\u{2e}cov([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.cov") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^\d$
(assert (str.in_re X (re.++ (re.range "0" "9") (str.to_re "\u{a}"))))
; stats\u{2e}drivecleaner\u{2e}comExciteasdbiz\u{2E}biz
(assert (str.in_re X (str.to_re "stats.drivecleaner.com\u{13}Exciteasdbiz.biz\u{a}")))
(check-sat)
