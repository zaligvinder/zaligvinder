(declare-const X String)
; User-Agent\u{3a}Host\u{3A}passwordhavewww\u{2E}alfacleaner\u{2E}com
(assert (str.in_re X (str.to_re "User-Agent:Host:passwordhavewww.alfacleaner.com\u{a}")))
(check-sat)
