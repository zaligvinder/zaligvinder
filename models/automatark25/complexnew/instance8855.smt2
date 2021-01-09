(declare-const X String)
; /^[1-9][0-9][0-9][0-9][0-9][0-9]$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to.re "/\x0a")))))
; Subject\x3a\s+Yeah\!Online\x2521\x2521\x2521
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Yeah!Online%21%21%21\x0a"))))
; too[^\n\r]*User-Agent\x3A\sHost\x3A.*IP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in.re X (re.++ (str.to.re "too") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "IP-WindowsAttachedPalas.starware.com/dp/search?x=\x0a")))))
(check-sat)
