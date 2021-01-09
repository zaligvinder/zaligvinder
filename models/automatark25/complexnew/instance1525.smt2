(declare-const X String)
; SI\|Server\|\d+informationWinInetEvilFTPOSSProxy\x5Chome\/lordofsearch
(assert (str.in.re X (re.++ (str.to.re "SI|Server|\x13") (re.+ (re.range "0" "9")) (str.to.re "informationWinInetEvilFTPOSSProxy\x5chome/lordofsearch\x0a"))))
; ^\d{0,2}(\.\d{1,4})? *%?$
(assert (str.in.re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))
; Server\.exeHWPEServer\x3aHost\x3A
(assert (str.in.re X (str.to.re "Server.exeHWPEServer:Host:\x0a")))
(check-sat)
