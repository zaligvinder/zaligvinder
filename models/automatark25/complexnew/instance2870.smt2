(declare-const X String)
; ^([EV])?\d{3,3}(\.\d{1,2})?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "E") (str.to.re "V"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; User-Agent\x3aUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a"))))
; User-Agent\x3aHost\x3Apasswordhavewww\x2Ealfacleaner\x2Ecom
(assert (not (str.in.re X (str.to.re "User-Agent:Host:passwordhavewww.alfacleaner.com\x0a"))))
; XPPreUser-Agent\x3ARemoteYOURsqlStarLoggerclvompycem\x2fcen\.vcn
(assert (not (str.in.re X (str.to.re "XPPreUser-Agent:RemoteYOURsqlStarLoggerclvompycem/cen.vcn\x0a"))))
; ((\d|([a-f]|[A-F])){2}:){5}(\d|([a-f]|[A-F])){2}
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re ":"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a")))))
(check-sat)
