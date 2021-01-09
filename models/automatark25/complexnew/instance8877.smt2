(declare-const X String)
; 32e3432ew+
(assert (str.in.re X (re.++ (str.to.re "32e3432e") (re.+ (str.to.re "w")) (str.to.re "\x0a"))))
; /gate\x2ephp\x3fid=[a-z]{15}/U
(assert (not (str.in.re X (re.++ (str.to.re "/gate.php?id=") ((_ re.loop 15 15) (re.range "a" "z")) (str.to.re "/U\x0a")))))
; error\*\-\*Wrong\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "error*-*Wrong") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:AlexaOnline%21%21%21User-Agent:\x0a")))))
; Desktop.*Hello\x2E.*Referer\x3AToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Desktop") (re.* re.allchar) (str.to.re "Hello.") (re.* re.allchar) (str.to.re "Referer:Toolbar\x0a")))))
(check-sat)
