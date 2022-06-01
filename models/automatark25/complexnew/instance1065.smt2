(declare-const X String)
; (?s)/\*.*\*/
(assert (not (str.in_re X (re.++ (str.to_re "/*") (re.* re.allchar) (str.to_re "*/\u{a}")))))
; ^UA-\d+-\d+$
(assert (str.in_re X (re.++ (str.to_re "UA-") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^(([1-9])|(0[1-9])|(1[0-2]))\/((0[1-9])|([1-31]))\/((\d{2})|(\d{4}))$
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.range "1" "3") (str.to_re "1")) (str.to_re "/") (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "\u{a}"))))
; www\u{2E}lookster\u{2E}netnotificationuuid=qisezhin\u{2f}iqor\.ym
(assert (not (str.in_re X (str.to_re "www.lookster.netnotification\u{13}uuid=qisezhin/iqor.ym\u{13}\u{a}"))))
; fromMinixmlldap\u{3A}\u{2F}\u{2F}\u{2F}bonzibuddy\u{2F}toolbar_domain_redirectUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "fromMinixmlldap:///bonzibuddy/toolbar_domain_redirectUser-Agent:\u{a}")))
(check-sat)
