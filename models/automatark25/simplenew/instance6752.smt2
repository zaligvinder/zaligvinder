(declare-const X String)
; ConnectionUser-Agent\x3A\swww\.fast-finder\.com
(assert (not (str.in.re X (re.++ (str.to.re "ConnectionUser-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com\x0a")))))
(check-sat)
