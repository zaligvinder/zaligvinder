(declare-const X String)
; /\/[a-zA-Z_-]+\.rtf$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".rtf/U\x0a"))))
; dist\x2Eatlas\x2Dia\x2EcomSpy\-LockedOnlineconnection
(assert (str.in.re X (str.to.re "dist.atlas-ia.comSpy-LockedOnlineconnection\x0a")))
; /filename=[^\n]*\x2ep2g/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".p2g/i\x0a")))))
; /filename=[^\n]*\x2evsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vsd/i\x0a"))))
; ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (re.opt (str.to.re ")")))) (re.* (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re " ") (str.to.re "(") (str.to.re ")"))) (str.to.re "\x0a")))))
(check-sat)
