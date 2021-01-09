(declare-const X String)
; /NICK A\[New\|(98|Me|NT4.0|2000|XP|Serv2003|Vis|7|Unk)\|x(86|64)\|[A-Z\-]{1,2}\|[0-9]{1,4}\]/
(assert (str.in.re X (re.++ (str.to.re "/NICK A[New|") (re.union (str.to.re "98") (str.to.re "Me") (re.++ (str.to.re "NT4") re.allchar (str.to.re "0")) (str.to.re "2000") (str.to.re "XP") (str.to.re "Serv2003") (str.to.re "Vis") (str.to.re "7") (str.to.re "Unk")) (str.to.re "|x") (re.union (str.to.re "86") (str.to.re "64")) (str.to.re "|") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (str.to.re "-"))) (str.to.re "|") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "]/\x0a"))))
(check-sat)
