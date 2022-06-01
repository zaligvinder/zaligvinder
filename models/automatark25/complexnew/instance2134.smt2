(declare-const X String)
; Runner.*\u{2E}html[^\n\r]*NetControl\u{2E}Server\d+media\u{2E}dxcdirect\u{2E}com\.smx\?PASSW=SAH
(assert (not (str.in_re X (re.++ (str.to_re "Runner") (re.* re.allchar) (str.to_re ".html") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "NetControl.Server\u{13}") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=SAH\u{a}")))))
; HXDownloadUser-Agent\u{3A}answerDeletingCookieReferer\u{3A}
(assert (not (str.in_re X (str.to_re "HXDownloadUser-Agent:answerDeletingCookieReferer:\u{a}"))))
; [^\d^\-^\,^\u{20}]+
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re "^") (str.to_re "-") (str.to_re ",") (str.to_re " "))) (str.to_re "\u{a}"))))
; /\/[a-z]{4}\.html\?j\=\d{6,7}$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 4 4) (re.range "a" "z")) (str.to_re ".html?j=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
; Host\u{3A}\d+Litequick\u{2E}qsrch\u{2E}comaboutHost\u{3A}Computer\u{7D}\u{7B}Sysuptime\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Litequick.qsrch.comaboutHost:Computer}{Sysuptime:\u{a}"))))
(check-sat)
