(declare-const X String)
; Agent.*as\x2Estarware\x2Ecom\s+ServerToolbarcojud\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Agent") (re.* re.allchar) (str.to.re "as.starware.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ServerToolbarcojud.dmcast.com\x0a")))))
(check-sat)
