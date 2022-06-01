(declare-const X String)
; ^(\d|,)*\.?\d*$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (str.to_re ","))) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; logs\d+X-Mailer\u{3a}\d+url=enews\u{2E}earthlink\u{2E}net
(assert (str.in_re X (re.++ (str.to_re "logs") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}") (re.+ (re.range "0" "9")) (str.to_re "url=enews.earthlink.net\u{a}"))))
; thesearchresltLoggerHost\u{3A}BetaHWAEHost\u{3A}is
(assert (str.in_re X (str.to_re "thesearchresltLoggerHost:BetaHWAEHost:is\u{a}")))
(check-sat)
