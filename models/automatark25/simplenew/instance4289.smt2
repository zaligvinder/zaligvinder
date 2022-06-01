(declare-const X String)
; YOURHost\u{3A}www\u{2E}alfacleaner\u{2E}com
(assert (str.in_re X (str.to_re "YOURHost:www.alfacleaner.com\u{a}")))
(check-sat)
