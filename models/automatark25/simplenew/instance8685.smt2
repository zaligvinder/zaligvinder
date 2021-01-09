(declare-const X String)
; myway\.com\s+SupervisorPalUser-Agent\x3ASearch
(assert (str.in.re X (re.++ (str.to.re "myway.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SupervisorPalUser-Agent:Search\x0a"))))
(check-sat)
