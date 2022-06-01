(declare-const X String)
; SI\|Server\|\d+informationWinInetEvilFTPOSSProxy\u{5C}home\/lordofsearch
(assert (str.in_re X (re.++ (str.to_re "SI|Server|\u{13}") (re.+ (re.range "0" "9")) (str.to_re "informationWinInetEvilFTPOSSProxy\u{5c}home/lordofsearch\u{a}"))))
(check-sat)
