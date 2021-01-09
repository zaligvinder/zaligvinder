(declare-const X String)
; v=c=DALOGbacktrust\x2EcomHost\x3AConnectedHost\x3AHost\x3aHost\x3alsSpyDawn
(assert (str.in.re X (str.to.re "v=c=DALOGbacktrust.comHost:ConnectedHost:Host:Host:lsSpyDawn\x0a")))
; ^(\d{5}-\d{4}|\d{5})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re " ") (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9"))))))
; ^((67\d{2})|(4\d{3})|(5[1-5]\d{2})|(6011))-?\s?\d{4}-?\s?\d{4}-?\s?\d{4}|3[4,7]\d{13}$
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "67") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "5") (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "6011")) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.union (str.to.re "4") (str.to.re ",") (str.to.re "7")) ((_ re.loop 13 13) (re.range "0" "9")) (str.to.re "\x0a")))))
; PORT\x3Dinternalcyber@yahoo\x2EcomHeaders
(assert (str.in.re X (str.to.re "PORT=internalcyber@yahoo.comHeaders\x0a")))
; Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (str.in.re X (str.to.re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\x13\x0a")))
(check-sat)
