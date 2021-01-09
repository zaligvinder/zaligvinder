(declare-const X String)
; ^[a-zA-Z_:]+[a-zA-Z_:\-\.\d]*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":") (str.to.re "-") (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a")))))
; 666Host\x3aWEBCAM-Host\x3a
(assert (str.in.re X (str.to.re "666Host:WEBCAM-Host:\x0a")))
; ^(\+27|27)?(\()?0?[87][23467](\))?( |-|\.|_)?(\d{3})( |-|\.|_)?(\d{4})
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+27") (str.to.re "27"))) (re.opt (str.to.re "(")) (re.opt (str.to.re "0")) (re.union (str.to.re "8") (str.to.re "7")) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re ".") (str.to.re "_"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re ".") (str.to.re "_"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3A\s+Host\x3Acdpnode=FILESIZE\x3Etoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:cdpnode=FILESIZE>\x13toolsbar.kuaiso.com\x0a")))))
(check-sat)
