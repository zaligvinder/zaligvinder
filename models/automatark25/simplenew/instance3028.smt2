(declare-const X String)
; Runner.*\u{2E}html[^\n\r]*NetControl\u{2E}Server\d+media\u{2E}dxcdirect\u{2E}com\.smx\?PASSW=SAH
(assert (str.in_re X (re.++ (str.to_re "Runner") (re.* re.allchar) (str.to_re ".html") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "NetControl.Server\u{13}") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=SAH\u{a}"))))
(check-sat)
