(declare-const X String)
; dist\x2Eatlas\x2Dia\x2EcomSpy\-LockedOnlineconnection
(assert (not (str.in.re X (str.to.re "dist.atlas-ia.comSpy-LockedOnlineconnection\x0a"))))
; /filename=[^\n]*\x2ert/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rt/i\x0a"))))
; jar:file:/(([A-Z]:)?/([A-Z 0-9 * ( ) + \- & $ # @ _ . ! ~ /])+)(/[A-Z 0-9 _ ( ) \[ \] - = + _ ~]+\.jar!)
(assert (not (str.in.re X (re.++ (str.to.re "jar:file:/\x0a") (re.opt (re.++ (re.range "A" "Z") (str.to.re ":"))) (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (str.to.re " ") (re.range "0" "9") (str.to.re "*") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re "&") (str.to.re "$") (str.to.re "#") (str.to.re "@") (str.to.re "_") (str.to.re ".") (str.to.re "!") (str.to.re "~") (str.to.re "/"))) (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (str.to.re " ") (re.range "0" "9") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re "[") (str.to.re "]") (re.range " " " ") (str.to.re "=") (str.to.re "+") (str.to.re "~"))) (str.to.re ".jar!")))))
; ^[+]\d{2}?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$
(assert (not (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) (re.union (re.++ (str.to.re "(") (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")")) (re.++ (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")))) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
