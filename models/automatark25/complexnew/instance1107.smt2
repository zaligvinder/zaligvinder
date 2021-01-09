(declare-const X String)
; \x2Ftoolbar\x2F\d+www\x2Ericercadoppia\x2EcomPALTALKSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "/toolbar/") (re.+ (re.range "0" "9")) (str.to.re "www.ricercadoppia.comPALTALKSubject:\x0a")))))
; fromMinixmlldap\x3A\x2F\x2F\x2Fbonzibuddy\x2Ftoolbar_domain_redirectUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "fromMinixmlldap:///bonzibuddy/toolbar_domain_redirectUser-Agent:\x0a"))))
; /filename=[^\n]*\x2ewps/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wps/i\x0a"))))
; ^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|11|12|10)-(19[0-9]{2})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (str.to.re "11") (str.to.re "12") (str.to.re "10")) (str.to.re "-\x0a19") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
