(declare-const X String)
; ^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.+ (re.++ (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a"))))
; \.cfg.*spyblini\x2Eini[^\n\r]*urfiqileuq\x2ftjzu.*Host\x3A666password\x3B1\x3BOptixGmbHPG=SPEEDBARcuReferer\x3A
(assert (not (str.in.re X (re.++ (str.to.re ".cfg") (re.* re.allchar) (str.to.re "spyblini.ini") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "urfiqileuq/tjzu") (re.* re.allchar) (str.to.re "Host:666password;1;OptixGmbHPG=SPEEDBARcuReferer:\x0a")))))
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (not (str.in.re X (str.to.re "WebsiteUser-Agent:httphostfast-look.com\x0a"))))
; (^\d{1,9})+(,\d{1,9})*$
(assert (not (str.in.re X (re.++ (re.+ ((_ re.loop 1 9) (re.range "0" "9"))) (re.* (re.++ (str.to.re ",") ((_ re.loop 1 9) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
