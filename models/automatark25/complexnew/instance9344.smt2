(declare-const X String)
; e2give\.com\s+data2\.activshopper\.com
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.com\x0a")))))
; /NICK A\[New\|(98|Me|NT4.0|2000|XP|Serv2003|Vis|7|Unk)\|x(86|64)\|[A-Z\-]{1,2}\|[0-9]{1,4}\]/
(assert (str.in.re X (re.++ (str.to.re "/NICK A[New|") (re.union (str.to.re "98") (str.to.re "Me") (re.++ (str.to.re "NT4") re.allchar (str.to.re "0")) (str.to.re "2000") (str.to.re "XP") (str.to.re "Serv2003") (str.to.re "Vis") (str.to.re "7") (str.to.re "Unk")) (str.to.re "|x") (re.union (str.to.re "86") (str.to.re "64")) (str.to.re "|") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (str.to.re "-"))) (str.to.re "|") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "]/\x0a"))))
; /(sIda\/sId|urua\/uru)[abcd]\.classPK/ims
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "sIda/sId") (str.to.re "urua/uru")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "d")) (str.to.re ".classPK/ims\x0a"))))
; www.*tool\x2Eworld2\x2Ecn
(assert (str.in.re X (re.++ (str.to.re "www") (re.* re.allchar) (str.to.re "tool.world2.cn\x13\x0a"))))
; /filename=[^\n]*\x2ecy3/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cy3/i\x0a")))))
(check-sat)
