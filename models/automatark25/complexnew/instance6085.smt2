(declare-const X String)
; www\u{2E}emp3finder\u{2E}com\d+ZOMBIES\u{5f}HTTP\u{5f}GET
(assert (str.in_re X (re.++ (str.to_re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GET\u{a}"))))
; ToolbarBasedATLRemoteFrom\u{3A}dcww\u{2E}dmcast\u{2E}com
(assert (str.in_re X (str.to_re "ToolbarBasedATLRemoteFrom:dcww.dmcast.com\u{a}")))
; /filename=[^\n]*\u{2e}xlsx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xlsx/i\u{a}"))))
; ^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::\u{a}") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; e2give\.comADRemoteHost\u{3A}
(assert (not (str.in_re X (str.to_re "e2give.comADRemoteHost:\u{a}"))))
(check-sat)
