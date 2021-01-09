(declare-const X String)
; /^connected\x2e[^\x0D\x0A]*20\d\d[^\x0D\x0A]*ver\x3A\s+Legends\s2\x2e1/smi
(assert (str.in.re X (re.++ (str.to.re "/connected.") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "20") (re.range "0" "9") (re.range "0" "9") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "ver:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Legends") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "2.1/smi\x0a"))))
; ^\{[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f0\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}\}$
(assert (not (str.in.re X (re.++ (str.to.re "{") ((_ re.loop 8 8) (re.union (re.range "A" "F") (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.range "a" "f") (str.to.re "0") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "A" "F") (re.range "a" "f") (re.range "0" "9"))) (str.to.re "}\x0a")))))
; Host\x3AFrom\x3aUser-Agent\x3A\x2Fr\x2Fkeys\x2FkeysClient
(assert (str.in.re X (str.to.re "Host:From:User-Agent:/r/keys/keysClient\x0a")))
(check-sat)
