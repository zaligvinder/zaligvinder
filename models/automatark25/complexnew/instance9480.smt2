(declare-const X String)
; \D
(assert (not (str.in.re X (re.++ (re.comp (re.range "0" "9")) (str.to.re "\x0a")))))
; User-Agent\x3AFrom\x3Awww\x2Eonlinecasinoextra\x2EcomHost\x3A
(assert (str.in.re X (str.to.re "User-Agent:From:www.onlinecasinoextra.comHost:\x0a")))
; ^[0-3][0-9][0-1]\d{3}-\d{4}?
(assert (not (str.in.re X (re.++ (re.range "0" "3") (re.range "0" "9") (re.range "0" "1") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
