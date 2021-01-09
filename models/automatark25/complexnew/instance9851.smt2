(declare-const X String)
; Host\x3A\s+cyber@yahoo\x2Ecom\sWordSpy\-LockedURLBlaze
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "cyber@yahoo.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "WordSpy-LockedURLBlaze\x0a")))))
; Host\x3a.*\x2Frss.*Desktopcargo=report\<\x2Ftitle\>
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "/rss") (re.* re.allchar) (str.to.re "Desktopcargo=report</title>\x0a")))))
; /filename=[^\n]*\x2ejfi/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jfi/i\x0a")))))
(check-sat)
