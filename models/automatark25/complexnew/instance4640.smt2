(declare-const X String)
; CUSTOM\swww\x2Elocators\x2Ecomas\x2Estarware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "CUSTOM") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.locators.comas.starware.com\x0a"))))
; \.cfg.*spyblini\x2Eini[^\n\r]*urfiqileuq\x2ftjzu.*Host\x3A666password\x3B1\x3BOptixGmbHPG=SPEEDBARcuReferer\x3A
(assert (not (str.in.re X (re.++ (str.to.re ".cfg") (re.* re.allchar) (str.to.re "spyblini.ini") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "urfiqileuq/tjzu") (re.* re.allchar) (str.to.re "Host:666password;1;OptixGmbHPG=SPEEDBARcuReferer:\x0a")))))
; /filename=[^\n]*\x2emp3/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mp3/i\x0a")))))
; ^( [1-9]|[1-9]|0[1-9]|10|11|12)[0-5]\d$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re " ") (re.range "1" "9")) (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (str.to.re "10") (str.to.re "11") (str.to.re "12")) (re.range "0" "5") (re.range "0" "9") (str.to.re "\x0a")))))
; [NS] \d{1,}(\:[0-5]\d){2}.{0,1}\d{0,},[EW] \d{1,}(\:[0-5]\d){2}.{0,1}\d{0,}
(assert (str.in.re X (re.++ (re.union (str.to.re "N") (str.to.re "S")) (str.to.re " ") (re.+ (re.range "0" "9")) ((_ re.loop 2 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt re.allchar) (re.* (re.range "0" "9")) (str.to.re ",") (re.union (str.to.re "E") (str.to.re "W")) (str.to.re " ") (re.+ (re.range "0" "9")) ((_ re.loop 2 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt re.allchar) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
