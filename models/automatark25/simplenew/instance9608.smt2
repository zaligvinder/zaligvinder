(declare-const X String)
; \.cfg.*spyblini\x2Eini[^\n\r]*urfiqileuq\x2ftjzu.*Host\x3A666password\x3B1\x3BOptixGmbHPG=SPEEDBARcuReferer\x3A
(assert (str.in.re X (re.++ (str.to.re ".cfg") (re.* re.allchar) (str.to.re "spyblini.ini") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "urfiqileuq/tjzu") (re.* re.allchar) (str.to.re "Host:666password;1;OptixGmbHPG=SPEEDBARcuReferer:\x0a"))))
(check-sat)
