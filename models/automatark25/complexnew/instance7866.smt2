(declare-const X String)
; /filename=[^\n]*\u{2e}ses/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ses/i\u{a}")))))
; YOURHost\u{3A}www\u{2E}alfacleaner\u{2E}com
(assert (not (str.in_re X (str.to_re "YOURHost:www.alfacleaner.com\u{a}"))))
(check-sat)
