(declare-const X String)
; error\*\-\*Wrong\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "error*-*Wrong") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:AlexaOnline%21%21%21User-Agent:\x0a")))))
; ^([1-9]+[0-9]* | [1-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re " ") (re.range "1" "9"))) (str.to.re "\x0a"))))
; www\x2Erichfind\x2Ecom\d+UI2
(assert (not (str.in.re X (re.++ (str.to.re "www.richfind.com") (re.+ (re.range "0" "9")) (str.to.re "UI2\x0a")))))
(check-sat)
