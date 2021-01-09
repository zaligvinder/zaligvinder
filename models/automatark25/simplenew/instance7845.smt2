(declare-const X String)
; Logs.*with\x3A\s+OnlineServer\x3aYeah\!
(assert (str.in.re X (re.++ (str.to.re "Logs") (re.* re.allchar) (str.to.re "with:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OnlineServer:Yeah!\x0a"))))
(check-sat)
