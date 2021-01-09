(declare-const X String)
; error\*\-\*Wrong\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "error*-*Wrong") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:AlexaOnline%21%21%21User-Agent:\x0a"))))
(check-sat)
