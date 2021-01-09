(declare-const X String)
; ^(F-)?((2[A|B])|[0-9]{2})[0-9]{3}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "F-")) (re.union (re.++ (str.to.re "2") (re.union (str.to.re "A") (str.to.re "|") (str.to.re "B"))) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; Flooded\s+Host\x3A\s+AppName\x2FGRSI\|Server\|Host\x3Aorigin\x3DsidefindHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Flooded") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AppName/GRSI|Server|\x13Host:origin=sidefindHost:User-Agent:\x0a")))))
(check-sat)
