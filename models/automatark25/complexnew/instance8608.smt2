(declare-const X String)
; www\x2Elookster\x2Enet\s+Host\x3ADesktopBlade
(assert (not (str.in.re X (re.++ (str.to.re "www.lookster.net") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:DesktopBlade\x0a")))))
; www\x2Erichfind\x2Ecom\d+UI2
(assert (str.in.re X (re.++ (str.to.re "www.richfind.com") (re.+ (re.range "0" "9")) (str.to.re "UI2\x0a"))))
; ^\b\d{2,3}-*\d{7}\b$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (re.* (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; /NICK A\[New\|(98|Me|NT4.0|2000|XP|Serv2003|Vis|7|Unk)\|x(86|64)\|[A-Z\-]{1,2}\|[0-9]{1,4}\]/
(assert (str.in.re X (re.++ (str.to.re "/NICK A[New|") (re.union (str.to.re "98") (str.to.re "Me") (re.++ (str.to.re "NT4") re.allchar (str.to.re "0")) (str.to.re "2000") (str.to.re "XP") (str.to.re "Serv2003") (str.to.re "Vis") (str.to.re "7") (str.to.re "Unk")) (str.to.re "|x") (re.union (str.to.re "86") (str.to.re "64")) (str.to.re "|") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (str.to.re "-"))) (str.to.re "|") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "]/\x0a"))))
; /filename=[^\n]*\x2epfm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfm/i\x0a")))))
(check-sat)
