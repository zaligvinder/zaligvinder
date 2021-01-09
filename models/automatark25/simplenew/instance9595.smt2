(declare-const X String)
; Runner.*\x2Ehtml[^\n\r]*NetControl\x2EServer\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAH
(assert (not (str.in.re X (re.++ (str.to.re "Runner") (re.* re.allchar) (str.to.re ".html") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "NetControl.Server\x13") (re.+ (re.range "0" "9")) (str.to.re "media.dxcdirect.com.smx?PASSW=SAH\x0a")))))
(check-sat)
