(declare-const X String)
; ^(FR)?\s?[A-Z0-9-[IO]]{2}[0-9]{9}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "FR")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "[") (str.to.re "I") (str.to.re "O")) ((_ re.loop 2 2) (str.to.re "]")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2eppt([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ppt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; User-Agent\x3a\s+Host\x3A\s+proxystylesheet=Excitefhfksjzsfu\x2fahm\.uqs
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "proxystylesheet=Excitefhfksjzsfu/ahm.uqs\x0a")))))
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.dxcdirect.com\x0a"))))
; User-Agent\x3A[^\n\r]*HTTP_RAT_
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "HTTP_RAT_\x0a")))))
(check-sat)
