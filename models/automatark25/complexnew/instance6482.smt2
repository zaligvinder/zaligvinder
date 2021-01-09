(declare-const X String)
; ((\d|([a-f]|[A-F])){2}:){5}(\d|([a-f]|[A-F])){2}
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re ":"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a")))))
; throughpjpoptwql\x2frlnjPOSTwebsearch\.getmirar\.comHost\x3Awww\x2EZSearchResults\x2EcomX-Mailer\x3A
(assert (str.in.re X (str.to.re "throughpjpoptwql/rlnjPOSTwebsearch.getmirar.comHost:www.ZSearchResults.com\x13X-Mailer:\x13\x0a")))
(check-sat)
