(declare-const X String)
; Toolbar[^\n\r]*tvshowtickets\w+weatherHost\x3AUser-Agent\x3Atwfofrfzlugq\x2feve\.qd
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "tvshowtickets") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "weatherHost:User-Agent:twfofrfzlugq/eve.qd\x0a")))))
; ^[0-9]{2,3}-? ?[0-9]{6,7}$
(assert (str.in.re X (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
