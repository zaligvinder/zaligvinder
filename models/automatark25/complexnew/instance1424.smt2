(declare-const X String)
; www\.123mania\.comSubject\u{3A}PromulGate666Logger-iVisicom
(assert (str.in_re X (str.to_re "www.123mania.comSubject:PromulGate666Logger-iVisicom\u{a}")))
; Cookie\u{3a}.*Host\u{3A}.*ldap\u{3A}\u{2F}\u{2F}
(assert (not (str.in_re X (re.++ (str.to_re "Cookie:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ldap://\u{a}")))))
; <table>(<tr>((<td>([A-Za-z0-9])*</td>)+)</tr>)*</table>
(assert (not (str.in_re X (re.++ (str.to_re "<table>") (re.* (re.++ (str.to_re "<tr>") (re.+ (re.++ (str.to_re "<td>") (re.* (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "</td>"))) (str.to_re "</tr>"))) (str.to_re "</table>\u{a}")))))
; /\u{2e}aom([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.aom") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
