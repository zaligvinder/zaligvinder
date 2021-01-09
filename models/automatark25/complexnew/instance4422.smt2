(declare-const X String)
; (^\d{5}\x2D\d{3}$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")))))
; <table>(<tr>((<td>([A-Za-z0-9])*</td>)+)</tr>)*</table>
(assert (str.in.re X (re.++ (str.to.re "<table>") (re.* (re.++ (str.to.re "<tr>") (re.+ (re.++ (str.to.re "<td>") (re.* (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "</td>"))) (str.to.re "</tr>"))) (str.to.re "</table>\x0a"))))
(check-sat)
