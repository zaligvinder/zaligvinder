(declare-const X String)
; /([^\x00-\xFF]\s*)/u
(assert (str.in.re X (re.++ (str.to.re "//u\x0a") (re.range "\x00" "\xff") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; User-Agent\x3A.*Host\x3A\dName=Your\+Host\+is\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.range "0" "9") (str.to.re "Name=Your+Host+is:\x0a"))))
; security\s+ad\x2Emokead\x2Ecom\x3C\x2Fchat\x3E
(assert (not (str.in.re X (re.++ (str.to.re "security") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ad.mokead.com</chat>\x0a")))))
; /filename=[^\n]*\x2ewvx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wvx/i\x0a")))))
(check-sat)
