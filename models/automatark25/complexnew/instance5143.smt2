(declare-const X String)
; Host\x3A\d+Host\x3A.*communitytipHost\x3AGirafaClient
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "communitytipHost:GirafaClient\x13\x0a"))))
; Subject\x3aHostYWRtaW46cGFzc3dvcmQ
(assert (not (str.in.re X (str.to.re "Subject:HostYWRtaW46cGFzc3dvcmQ\x0a"))))
; \x2Ftoolbar\x2F\d+www\x2Ericercadoppia\x2EcomPALTALKSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "/toolbar/") (re.+ (re.range "0" "9")) (str.to.re "www.ricercadoppia.comPALTALKSubject:\x0a")))))
; ^(\(\d{3}\)[- ]?|\d{3}[- ])?\d{3}[- ]\d{4}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re "-") (str.to.re " ")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^(\()?(787|939)(\)|-)?([0-9]{3})(-)?([0-9]{4}|[0-9]{4})$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "(")) (re.union (str.to.re "787") (str.to.re "939")) (re.opt (re.union (str.to.re ")") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
