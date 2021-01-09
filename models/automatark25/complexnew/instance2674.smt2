(declare-const X String)
; ToolbarUser-Agent\x3AFrom\x3A
(assert (str.in.re X (str.to.re "ToolbarUser-Agent:From:\x0a")))
; ^([A-Z\d]{3})[A-Z]{2}\d{2}([A-Z\d]{1})([X\d]{1})([A-Z\d]{3})\d{5}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 1 1) (re.union (str.to.re "X") (re.range "0" "9"))) ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
; (script)|(<)|(>)|(%3c)|(%3e)|(SELECT) |(UPDATE) |(INSERT) |(DELETE)|(GRANT) |(REVOKE)|(UNION)|(&lt;)|(&gt;)
(assert (str.in.re X (re.union (str.to.re "script") (str.to.re "<") (str.to.re ">") (str.to.re "%3c") (str.to.re "%3e") (str.to.re "SELECT ") (str.to.re "UPDATE ") (str.to.re "INSERT ") (str.to.re "DELETE") (str.to.re "GRANT ") (str.to.re "REVOKE") (str.to.re "UNION") (str.to.re "&lt;") (str.to.re "&gt;\x0a"))))
(check-sat)
