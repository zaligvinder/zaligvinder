(declare-const X String)
; www\.123mania\.comSubject\x3APromulGate666Logger-iVisicom
(assert (str.in.re X (str.to.re "www.123mania.comSubject:PromulGate666Logger-iVisicom\x0a")))
; Cookie\x3a.*Host\x3A.*ldap\x3A\x2F\x2F
(assert (not (str.in.re X (re.++ (str.to.re "Cookie:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "ldap://\x0a")))))
; <table>(<tr>((<td>([A-Za-z0-9])*</td>)+)</tr>)*</table>
(assert (not (str.in.re X (re.++ (str.to.re "<table>") (re.* (re.++ (str.to.re "<tr>") (re.+ (re.++ (str.to.re "<td>") (re.* (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "</td>"))) (str.to.re "</tr>"))) (str.to.re "</table>\x0a")))))
; /\x2eaom([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.aom") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
