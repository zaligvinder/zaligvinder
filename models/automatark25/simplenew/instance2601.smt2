(declare-const X String)
; SI\|Server\|\d+informationWinInetEvilFTPOSSProxy\x5Chome\/lordofsearch
(assert (str.in.re X (re.++ (str.to.re "SI|Server|\x13") (re.+ (re.range "0" "9")) (str.to.re "informationWinInetEvilFTPOSSProxy\x5chome/lordofsearch\x0a"))))
(check-sat)
