(declare-const X String)
; /filename=[^\n]*\x2exap/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xap/i\x0a")))))
; /filename=[\x22\x27]?[^\n]*\x2ewpd[\x22\x27\s]/si
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wpd") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a")))))
; \.myway\.comToolbarUI2Host\x3ASubject\x3Atoxbqyosoe\x2fcpvm
(assert (not (str.in.re X (str.to.re ".myway.com\x1bToolbarUI2Host:Subject:toxbqyosoe/cpvm\x0a"))))
(check-sat)
