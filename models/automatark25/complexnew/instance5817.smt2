(declare-const X String)
; protocolNetControl\x2EServerKEYLOGGERUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "protocolNetControl.Server\x13KEYLOGGERUser-Agent:\x0a"))))
; Host\x3A\s+A-311Servert=form-data\x3B\x20name=\x22pid\x22
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "A-311Servert=form-data; name=\x22pid\x22\x0a")))))
(check-sat)
