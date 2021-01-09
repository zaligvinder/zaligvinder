(declare-const X String)
; metaresults\.copernic\.comServer\x00
(assert (str.in.re X (str.to.re "metaresults.copernic.comServer\x00\x0a")))
; /\x2exslt([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xslt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; xbqyosoe\x2fcpvmdll\x3F
(assert (str.in.re X (str.to.re "xbqyosoe/cpvmdll?\x0a")))
; User-Agent\x3A\s+community\d+
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "community") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[+-]?[0-9]+$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
