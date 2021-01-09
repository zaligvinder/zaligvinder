(declare-const X String)
; (?s)/\*.*\*/
(assert (not (str.in.re X (re.++ (str.to.re "/*") (re.* re.allchar) (str.to.re "*/\x0a")))))
; ^UA-\d+-\d+$
(assert (str.in.re X (re.++ (str.to.re "UA-") (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(([1-9])|(0[1-9])|(1[0-2]))\/((0[1-9])|([1-31]))\/((\d{2})|(\d{4}))$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.range "1" "3") (str.to.re "1")) (str.to.re "/") (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
; www\x2Elookster\x2Enetnotificationuuid=qisezhin\x2fiqor\.ym
(assert (not (str.in.re X (str.to.re "www.lookster.netnotification\x13uuid=qisezhin/iqor.ym\x13\x0a"))))
; fromMinixmlldap\x3A\x2F\x2F\x2Fbonzibuddy\x2Ftoolbar_domain_redirectUser-Agent\x3A
(assert (str.in.re X (str.to.re "fromMinixmlldap:///bonzibuddy/toolbar_domain_redirectUser-Agent:\x0a")))
(check-sat)
