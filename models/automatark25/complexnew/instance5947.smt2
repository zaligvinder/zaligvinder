(declare-const X String)
; /filename=[^\n]*\x2em3u/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m3u/i\x0a")))))
; href[\s]*=[\s]*"[^\n"]*"
(assert (str.in.re X (re.++ (str.to.re "href") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x22"))) (str.to.re "\x22\x0a"))))
; (\<!--\s*.*?((--\>)|$))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a<!--") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "-->")))))
; Agent.*as\x2Estarware\x2Ecom\s+ServerToolbarcojud\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Agent") (re.* re.allchar) (str.to.re "as.starware.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ServerToolbarcojud.dmcast.com\x0a"))))
(check-sat)
