(declare-const X String)
; Host\x3a\dgpstool\x2eglobaladserver\x2ecomdesksearch\.dropspam\.com
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "gpstool.globaladserver.comdesksearch.dropspam.com\x0a"))))
; /\x2ewvx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wvx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
