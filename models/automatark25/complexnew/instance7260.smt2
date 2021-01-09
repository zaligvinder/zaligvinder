(declare-const X String)
; error\*\-\*Wrong\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "error*-*Wrong") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:AlexaOnline%21%21%21User-Agent:\x0a"))))
; <.*\b(bgcolor\s*=\s*[\"|\']*(\#\w{6})[\"|\']*).*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* re.allchar) (re.* re.allchar) (str.to.re ">\x0abgcolor") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re "\x22") (str.to.re "|") (str.to.re "'"))) (re.* (re.union (str.to.re "\x22") (str.to.re "|") (str.to.re "'"))) (str.to.re "#") ((_ re.loop 6 6) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
(check-sat)
