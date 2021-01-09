(declare-const X String)
; wwwHost\x3aRobertVersionspyblini\x2Eini
(assert (str.in.re X (str.to.re "wwwHost:RobertVersionspyblini.ini\x0a")))
; \x2Fbar_pl\x2Fchk\.fcgiHWAEcom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "/bar_pl/chk.fcgiHWAEcom/index.php?tpid=\x0a"))))
; ^(([0][0-9]|[1][0-2])|[0-9]):([0-5][0-9])( *)((AM|PM)|(A|P))$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.* (str.to.re " ")) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "A") (str.to.re "P")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9"))))
; ppcdomain\x2Eco\x2Euk.*Spy\-Locked\s+Exploiter\w+\x2Fr\x2Fkeys\x2FkeysS\x3aUsers\x5cIterenet
(assert (not (str.in.re X (re.++ (str.to.re "ppcdomain.co.uk") (re.* re.allchar) (str.to.re "Spy-Locked") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Exploiter") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/r/keys/keysS:Users\x5cIterenet\x0a")))))
(check-sat)
