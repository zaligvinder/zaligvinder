(declare-const X String)
; fromMinixmlldap\x3A\x2F\x2F\x2Fbonzibuddy\x2Ftoolbar_domain_redirectUser-Agent\x3A
(assert (str.in.re X (str.to.re "fromMinixmlldap:///bonzibuddy/toolbar_domain_redirectUser-Agent:\x0a")))
(check-sat)
