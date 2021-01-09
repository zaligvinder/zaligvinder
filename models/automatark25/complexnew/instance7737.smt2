(declare-const X String)
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (str.in.re X (str.to.re "thesearchresltLoggerHost:BetaHWAEHost:is\x0a")))
; ^[ \t]+|[ \t]+$
(assert (str.in.re X (re.union (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "\x0a")))))
; Host\x3A\d+rprpgbnrppb\x2fci[^\n\r]*RXFilteredDmInf\x5E
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ci") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "RXFilteredDmInf^\x0a"))))
(check-sat)
