(declare-const X String)
; Host\x3A\s+Basic\s+\.htaServerTheef2
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Basic") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".htaServerTheef2\x0a"))))
; toolsbar\x2Ekuaiso\x2Ecom\d\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in.re X (re.++ (str.to.re "toolsbar.kuaiso.com") (re.range "0" "9") (str.to.re "/bar_pl/chk_bar.fcgi\x0a"))))
; /\x2eqt([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.qt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
