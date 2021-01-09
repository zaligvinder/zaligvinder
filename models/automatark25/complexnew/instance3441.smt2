(declare-const X String)
; /filename=[^\n]*\x2eaddin/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a"))))
; as\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=.*X-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "as.starware.com/dp/search?x=") (re.* re.allchar) (str.to.re "X-Mailer:\x13\x0a")))))
; User-Agent\x3A.*Host\x3A\dName=Your\+Host\+is\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.range "0" "9") (str.to.re "Name=Your+Host+is:\x0a")))))
; Subject\x3A\s+www\x2eproventactics\x2ecomdownloads\x2Emorpheus\x2Ecom\x2Frotation
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.proventactics.comdownloads.morpheus.com/rotation\x0a"))))
(check-sat)
