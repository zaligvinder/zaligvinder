(declare-const X String)
; SI\|Server\|\d+informationWinInetEvilFTPOSSProxy\u{5C}home\/lordofsearch
(assert (not (str.in_re X (re.++ (str.to_re "SI|Server|\u{13}") (re.+ (re.range "0" "9")) (str.to_re "informationWinInetEvilFTPOSSProxy\u{5c}home/lordofsearch\u{a}")))))
; ^( [1-9]|[1-9]|0[1-9]|10|11|12)[0-5]\d$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re " ") (re.range "1" "9")) (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (str.to_re "10") (str.to_re "11") (str.to_re "12")) (re.range "0" "5") (re.range "0" "9") (str.to_re "\u{a}")))))
; User-Agent\u{3A}\u{2F}rssMinutesansweras\u{2E}starware\u{2E}comFictionalHost\u{3A}Host\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:/rssMinutesansweras.starware.comFictionalHost:Host:\u{a}")))
(check-sat)
