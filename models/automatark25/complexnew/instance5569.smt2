(declare-const X String)
; ^http://\\.?video\\.google+\\.\\w{2,3}/videoplay\\?docid=[\\w-]{19}
(assert (str.in.re X (re.++ (str.to.re "http://\x5c") (re.opt re.allchar) (str.to.re "video\x5c") re.allchar (str.to.re "googl") (re.+ (str.to.re "e")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 2 3) (str.to.re "w")) (str.to.re "/videoplay") (re.opt (str.to.re "\x5c")) (str.to.re "docid=") ((_ re.loop 19 19) (re.union (str.to.re "\x5c") (str.to.re "w") (str.to.re "-"))) (str.to.re "\x0a"))))
; iz=cyber@yahoo\x2EcomSpyBuddyCenterIP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (str.to.re "iz=cyber@yahoo.comSpyBuddyCenterIP-WindowsAttachedPalas.starware.com/dp/search?x=\x0a")))
; User-Agent\x3a\s+Subject\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:as.starware.com\x0a")))))
; ^\([0-9]{3}\)[0-9]{3}(-)[0-9]{4}
(assert (not (str.in.re X (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
