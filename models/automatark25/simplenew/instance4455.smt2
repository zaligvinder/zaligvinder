(declare-const X String)
; www\u{2E}alfacleaner\u{2E}comHost\u{3a}Logs
(assert (not (str.in_re X (str.to_re "www.alfacleaner.comHost:Logs\u{a}"))))
(check-sat)
