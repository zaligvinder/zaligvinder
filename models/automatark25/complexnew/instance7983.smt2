(declare-const X String)
; (^(2014)|^(2149))\d{11}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "2014") (str.to.re "2149")) ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a")))))
; \.cfg.*spyblini\x2Eini[^\n\r]*urfiqileuq\x2ftjzu.*Host\x3A666password\x3B1\x3BOptixGmbHPG=SPEEDBARcuReferer\x3A
(assert (not (str.in.re X (re.++ (str.to.re ".cfg") (re.* re.allchar) (str.to.re "spyblini.ini") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "urfiqileuq/tjzu") (re.* re.allchar) (str.to.re "Host:666password;1;OptixGmbHPG=SPEEDBARcuReferer:\x0a")))))
; metaresults\.copernic\.comServer\x00
(assert (not (str.in.re X (str.to.re "metaresults.copernic.comServer\x00\x0a"))))
; ^[0-9]{2}-[0-9]{8}-[0-9]$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
; ^.*[_A-Za-z0-9]+[\t ]+[\*&]?[\t ]*[_A-Za-z0-9](::)?[_A-Za-z0-9:]+[\t ]*\(( *[ \[\]\*&A-Za-z0-9_]+ *,? *)*\).*$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.+ (re.union (str.to.re "_") (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.+ (re.union (str.to.re "\x09") (str.to.re " "))) (re.opt (re.union (str.to.re "*") (str.to.re "&"))) (re.* (re.union (str.to.re "\x09") (str.to.re " "))) (re.union (str.to.re "_") (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.opt (str.to.re "::")) (re.+ (re.union (str.to.re "_") (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re ":"))) (re.* (re.union (str.to.re "\x09") (str.to.re " "))) (str.to.re "(") (re.* (re.++ (re.* (str.to.re " ")) (re.+ (re.union (str.to.re " ") (str.to.re "[") (str.to.re "]") (str.to.re "*") (str.to.re "&") (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_"))) (re.* (str.to.re " ")) (re.opt (str.to.re ",")) (re.* (str.to.re " ")))) (str.to.re ")") (re.* re.allchar) (str.to.re "\x0a"))))
(check-sat)
