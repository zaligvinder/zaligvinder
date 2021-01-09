(declare-const X String)
; [a-z0-9][a-z0-9_\.-]{0,}[a-z0-9]\.[a-z0-9][a-z0-9_\.-]{0,}[a-z0-9][\.][cn]{2,4}
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to.re ".") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 4) (re.union (str.to.re "c") (str.to.re "n"))) (str.to.re "\x0a"))))
; \A(([a-zA-Z]{1,2}\d{1,2})|([a-zA-Z]{2}\d[a-zA-Z]{1}))\x20{0,1}\d[a-zA-Z]{2}\Z
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.range "0" "9") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.opt (str.to.re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; ^([(][1-9]{2}[)] )?[0-9]{4}[-]?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "(") ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re ") "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; dist\x2Eatlas\x2Dia\x2EcomSpy\-LockedOnlineconnection
(assert (not (str.in.re X (str.to.re "dist.atlas-ia.comSpy-LockedOnlineconnection\x0a"))))
(check-sat)
