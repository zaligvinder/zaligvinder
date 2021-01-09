(declare-const X String)
; <table>(<tr>((<td>([A-Za-z0-9])*</td>)+)</tr>)*</table>
(assert (not (str.in.re X (re.++ (str.to.re "<table>") (re.* (re.++ (str.to.re "<tr>") (re.+ (re.++ (str.to.re "<td>") (re.* (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "</td>"))) (str.to.re "</tr>"))) (str.to.re "</table>\x0a")))))
(check-sat)
