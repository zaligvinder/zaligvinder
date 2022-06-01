(declare-const X String)
; /^\/([a-zA-Z0-9-&+ ]+[^\/?]=){5}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 5 5) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (str.to_re "+") (str.to_re " "))) (re.union (str.to_re "/") (str.to_re "?")) (str.to_re "="))) (str.to_re "/Ui\u{a}")))))
; Host\u{3A}Host\u{3A}User-Agent\u{3A}Serverad\u{2E}mokead\u{2E}com
(assert (str.in_re X (str.to_re "Host:Host:User-Agent:Serverad.mokead.com\u{a}")))
; \|(http.*)\|(.*)$/ig
(assert (str.in_re X (re.++ (str.to_re "||") (re.* re.allchar) (str.to_re "/ig\u{a}http") (re.* re.allchar))))
(check-sat)
