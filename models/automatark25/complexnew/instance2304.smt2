(declare-const X String)
; User-Agent\x3A\d+Desktop\sIDENTIFY666User-Agent\x3A\x5BStatic
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Desktop") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "IDENTIFY666User-Agent:[Static\x0a")))))
; \.myway\.comToolbarUI2Host\x3ASubject\x3Atoxbqyosoe\x2fcpvm
(assert (not (str.in.re X (str.to.re ".myway.com\x1bToolbarUI2Host:Subject:toxbqyosoe/cpvm\x0a"))))
(check-sat)
