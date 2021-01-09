(declare-const X String)
; sbRedirectionsHost\x3AHost\x3AUser-Agent\x3Ahotbar%3fwww\x2Einternetadvertisingcompany\x2Ebiz
(assert (str.in.re X (str.to.re "sbRedirections\x1bHost:Host:User-Agent:hotbar%3fwww.internetadvertisingcompany.biz\x0a")))
(check-sat)
