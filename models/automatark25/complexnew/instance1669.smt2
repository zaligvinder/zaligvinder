(declare-const X String)
; /^\/([a-zA-Z0-9-&+ ]+[^\/?]=){5}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "&") (str.to.re "+") (str.to.re " "))) (re.union (str.to.re "/") (str.to.re "?")) (str.to.re "="))) (str.to.re "/Ui\x0a")))))
; Host\x3AHost\x3AUser-Agent\x3AServerad\x2Emokead\x2Ecom
(assert (str.in.re X (str.to.re "Host:Host:User-Agent:Serverad.mokead.com\x0a")))
; \|(http.*)\|(.*)$/ig
(assert (str.in.re X (re.++ (str.to.re "||") (re.* re.allchar) (str.to.re "/ig\x0ahttp") (re.* re.allchar))))
(check-sat)
