(declare-const X String)
; ^[\w\.=-]+@[\w\.-]+\.[\w]{2,3}$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re ".") (str.to.re "=") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; ^((Fred|Wilma)\s+Flintstone|(Barney|Betty)\s+Rubble)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "Fred") (str.to.re "Wilma")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Flintstone")) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "RubbleB") (re.union (str.to.re "arney") (str.to.re "etty")))) (str.to.re "\x0a")))))
; wowokayoffers\x2Ebullseye-network\x2EcomRTB\x0D\x0A\x0D\x0AAttached
(assert (str.in.re X (str.to.re "wowokayoffers.bullseye-network.comRTB\x0d\x0a\x0d\x0aAttached\x0a")))
; /^\x7b\x22[a-f0-9]{4}\x22\x3a\x22([a-f0-9]{32}|false)\x22,/smiP
(assert (str.in.re X (re.++ (str.to.re "/{\x22") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x22:\x22") (re.union ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "false")) (str.to.re "\x22,/smiP\x0a"))))
(check-sat)
