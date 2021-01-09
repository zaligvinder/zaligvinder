(declare-const X String)
; \.cfg\s+xbqyosoe\x2fcpvmAdToolsconnectedNodes\/cgi-bin\/PopupV
(assert (str.in.re X (re.++ (str.to.re ".cfg") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "xbqyosoe/cpvmAdToolsconnectedNodes/cgi-bin/PopupV\x0a"))))
(check-sat)
