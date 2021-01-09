(declare-const X String)
; ^[0][1-9]{2}(-)[0-9]{8}$  and  ^[0][1-9]{3}(-)[0-9]{7}$  and  ^[0][1-9]{4}(-)[0-9]{6}$
(assert (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "-") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "  and  0") ((_ re.loop 3 3) (re.range "1" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "  and  0") ((_ re.loop 4 4) (re.range "1" "9")) (str.to.re "-") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ebak/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bak/i\x0a"))))
; User-Agent\x3Atwfofrfzlugq\x2feve\.qduuid=ppcdomain\x2Eco\x2EukGuardedReferer\x3AreadyLOGUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:twfofrfzlugq/eve.qduuid=ppcdomain.co.ukGuardedReferer:readyLOGUser-Agent:\x0a")))
; /^From\x3a[^\r\n]*SpyBuddy/smi
(assert (not (str.in.re X (re.++ (str.to.re "/From:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "SpyBuddy/smi\x0a")))))
; /NICK A\[New\|(98|Me|NT4.0|2000|XP|Serv2003|Vis|7|Unk)\|x(86|64)\|[A-Z\-]{1,2}\|[0-9]{1,4}\]/
(assert (str.in.re X (re.++ (str.to.re "/NICK A[New|") (re.union (str.to.re "98") (str.to.re "Me") (re.++ (str.to.re "NT4") re.allchar (str.to.re "0")) (str.to.re "2000") (str.to.re "XP") (str.to.re "Serv2003") (str.to.re "Vis") (str.to.re "7") (str.to.re "Unk")) (str.to.re "|x") (re.union (str.to.re "86") (str.to.re "64")) (str.to.re "|") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (str.to.re "-"))) (str.to.re "|") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "]/\x0a"))))
(check-sat)
