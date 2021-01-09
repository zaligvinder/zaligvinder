(declare-const X String)
; eveocczmthmmq\x2fomzl\s+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "zmnjgmomgbdz/zzmw.gzt\x0a"))))
; User-Agent\x3Aetbuviaebe\x2feqv\.bvv
(assert (not (str.in.re X (str.to.re "User-Agent:etbuviaebe/eqv.bvv\x0a"))))
(check-sat)
