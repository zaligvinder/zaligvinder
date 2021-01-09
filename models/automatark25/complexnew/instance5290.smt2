(declare-const X String)
; /filename=[^\n]*\x2eavi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".avi/i\x0a"))))
; ^(2[0-3]|[01]?[0-9]):([0-5]?[0-9]):([0-5]?[0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "3")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9"))) (str.to.re "::\x0a") (re.opt (re.range "0" "5")) (re.range "0" "9") (re.opt (re.range "0" "5")) (re.range "0" "9"))))
; \x2FrssScaneradfsgecoiwnf\x7D\x7BTrojan\x3AlogsHost\x3a
(assert (str.in.re X (str.to.re "/rssScaneradfsgecoiwnf\x1b}{Trojan:logsHost:\x0a")))
(check-sat)
