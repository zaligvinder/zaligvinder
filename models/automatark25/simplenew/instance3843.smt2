(declare-const X String)
; A-311.*with\x3A\s+OnlineServer\x3aYeah\!User-Agent\x3a
(assert (not (str.in.re X (re.++ (str.to.re "A-311") (re.* re.allchar) (str.to.re "with:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OnlineServer:Yeah!User-Agent:\x0a")))))
(check-sat)
