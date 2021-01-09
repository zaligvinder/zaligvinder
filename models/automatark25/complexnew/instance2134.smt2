(declare-const X String)
; Runner.*\x2Ehtml[^\n\r]*NetControl\x2EServer\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAH
(assert (not (str.in.re X (re.++ (str.to.re "Runner") (re.* re.allchar) (str.to.re ".html") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "NetControl.Server\x13") (re.+ (re.range "0" "9")) (str.to.re "media.dxcdirect.com.smx?PASSW=SAH\x0a")))))
; HXDownloadUser-Agent\x3AanswerDeletingCookieReferer\x3A
(assert (not (str.in.re X (str.to.re "HXDownloadUser-Agent:answerDeletingCookieReferer:\x0a"))))
; [^\d^\-^\,^\x20]+
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "^") (str.to.re "-") (str.to.re ",") (str.to.re " "))) (str.to.re "\x0a"))))
; /\/[a-z]{4}\.html\?j\=\d{6,7}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "a" "z")) (str.to.re ".html?j=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; Host\x3A\d+Litequick\x2Eqsrch\x2EcomaboutHost\x3AComputer\x7D\x7BSysuptime\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Litequick.qsrch.comaboutHost:Computer}{Sysuptime:\x0a"))))
(check-sat)
