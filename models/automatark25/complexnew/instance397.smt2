(declare-const X String)
; ChildWebGuardian\d+Subject\x3A
(assert (str.in.re X (re.++ (str.to.re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to.re "Subject:\x0a"))))
; ^([1-9]|1[0-2]):[0-5]\d ?(a|A|p|P)(m|M)$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (re.opt (str.to.re " ")) (re.union (str.to.re "a") (str.to.re "A") (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")) (str.to.re "\x0a"))))
; SbAts\d+dcww\x2Edmcast\x2EcomdistID=
(assert (str.in.re X (re.++ (str.to.re "SbAts") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.comdistID=\x0a"))))
; (\n\r)   replacement string---->\n
(assert (not (str.in.re X (str.to.re "\x0a\x0d   replacement string---->\x0a\x0a"))))
(check-sat)
