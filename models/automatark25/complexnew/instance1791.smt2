(declare-const X String)
; Kontikidownloadfile\x2eorged2kcom\x3EHost\x3AWindows
(assert (not (str.in.re X (str.to.re "Kontikidownloadfile.orged2kcom>Host:Windows\x0a"))))
; \x22reaction\x2Etxt\x22\d+sErverdist\x2Eatlas\x2Dia\x2EcomUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "\x22reaction.txt\x22") (re.+ (re.range "0" "9")) (str.to.re "sErverdist.atlas-ia.comUser-Agent:\x0a")))))
; ^[0-9]{8}$
(assert (not (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^\d+\.\d\.\d[01]\d[0-3]\d\.[1-9]\d*$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (str.to.re ".") (re.range "1" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
