(declare-const X String)
; Supreme\s+User-Agent\x3A\s+ApofisToolbarUser
(assert (not (str.in.re X (re.++ (str.to.re "Supreme") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ApofisToolbarUser\x0a")))))
; \.myway\.comToolbarUI2Host\x3ASubject\x3Atoxbqyosoe\x2fcpvm
(assert (not (str.in.re X (str.to.re ".myway.com\x1bToolbarUI2Host:Subject:toxbqyosoe/cpvm\x0a"))))
; ver.*Black\s+CD\x2Furl=Host\x3anotification
(assert (not (str.in.re X (re.++ (str.to.re "ver") (re.* re.allchar) (str.to.re "Black") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CD/url=Host:notification\x13\x0a")))))
; /[^\x20-\x7e\x0d\x0a]{4}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a"))))
; ^(\d{3,})\s?(\w{0,5})\s([a-zA-Z]{2,30})\s([a-zA-Z]{2,15})\.?\s?(\w{0,5})$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 0 5) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 30) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 15) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 0 5) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.range "0" "9")))))
(check-sat)
