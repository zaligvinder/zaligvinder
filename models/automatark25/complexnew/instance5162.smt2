(declare-const X String)
; /\x2ecov([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.cov") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^\d$
(assert (str.in.re X (re.++ (re.range "0" "9") (str.to.re "\x0a"))))
; stats\x2edrivecleaner\x2ecomExciteasdbiz\x2Ebiz
(assert (str.in.re X (str.to.re "stats.drivecleaner.com\x13Exciteasdbiz.biz\x0a")))
(check-sat)
