(declare-const X String)
; User-Agent\x3A\s+Host\x3Acdpnode=FILESIZE\x3Etoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:cdpnode=FILESIZE>\x13toolsbar.kuaiso.com\x0a")))))
; Fictional[^\n\r]*v\x3B[^\n\r]*\x22Stealth\d+moreKontikiHost\x3aAcmeEvilFTPHost\x3ATOOLBARSupremePort\x2E
(assert (not (str.in.re X (re.++ (str.to.re "Fictional") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "v;") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x22Stealth") (re.+ (re.range "0" "9")) (str.to.re "moreKontikiHost:AcmeEvilFTPHost:TOOLBARSupremePort.\x0a")))))
; /logo\.png\x3f(sv\x3d\d{1,3})?\x26tq\x3d.*?SoSEU/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/logo.png?") (re.opt (re.++ (str.to.re "sv=") ((_ re.loop 1 3) (re.range "0" "9")))) (str.to.re "&tq=") (re.* re.allchar) (str.to.re "SoSEU/smiU\x0a")))))
; ^0[1-9]\d{7,8}$
(assert (not (str.in.re X (re.++ (str.to.re "0") (re.range "1" "9") ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
