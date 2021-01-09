(declare-const X String)
; ^\d{3}-\d{7}[0-6]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "6")) (str.to.re "\x0a"))))
; User-Agent\x3A\s+Host\x3Acdpnode=FILESIZE\x3Etoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:cdpnode=FILESIZE>\x13toolsbar.kuaiso.com\x0a")))))
(check-sat)
