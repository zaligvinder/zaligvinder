(declare-const X String)
; Host\x3A.*rt[^\n\r]*Host\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "rt") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:\x0a")))))
; \x22Thewebsearch\.getmirar\.com
(assert (str.in.re X (str.to.re "\x22Thewebsearch.getmirar.com\x0a")))
; /^User-Agent\x3A[^\r\n]*TT-Bot/mi
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "TT-Bot/mi\x0a")))))
; Host\x3AtoUser-Agent\x3AClientsConnected-
(assert (str.in.re X (str.to.re "Host:toUser-Agent:ClientsConnected-\x0a")))
(check-sat)
