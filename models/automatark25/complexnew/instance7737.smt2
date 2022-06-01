(declare-const X String)
; thesearchresltLoggerHost\u{3A}BetaHWAEHost\u{3A}is
(assert (str.in_re X (str.to_re "thesearchresltLoggerHost:BetaHWAEHost:is\u{a}")))
; ^[ \t]+|[ \t]+$
(assert (str.in_re X (re.union (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "\u{a}")))))
; Host\u{3A}\d+rprpgbnrppb\u{2f}ci[^\n\r]*RXFilteredDmInf\u{5E}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "RXFilteredDmInf^\u{a}"))))
(check-sat)
