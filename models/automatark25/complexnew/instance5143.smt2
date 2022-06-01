(declare-const X String)
; Host\u{3A}\d+Host\u{3A}.*communitytipHost\u{3A}GirafaClient
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "communitytipHost:GirafaClient\u{13}\u{a}"))))
; Subject\u{3a}HostYWRtaW46cGFzc3dvcmQ
(assert (not (str.in_re X (str.to_re "Subject:HostYWRtaW46cGFzc3dvcmQ\u{a}"))))
; \u{2F}toolbar\u{2F}\d+www\u{2E}ricercadoppia\u{2E}comPALTALKSubject\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "/toolbar/") (re.+ (re.range "0" "9")) (str.to_re "www.ricercadoppia.comPALTALKSubject:\u{a}")))))
; ^(\(\d{3}\)[- ]?|\d{3}[- ])?\d{3}[- ]\d{4}$
(assert (not (str.in_re X (re.++ (re.opt (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")") (re.opt (re.union (str.to_re "-") (str.to_re " ")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^(\()?(787|939)(\)|-)?([0-9]{3})(-)?([0-9]{4}|[0-9]{4})$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "(")) (re.union (str.to_re "787") (str.to_re "939")) (re.opt (re.union (str.to_re ")") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
