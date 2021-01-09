(declare-const X String)
; Host\x3AHost\x3asidebar\.activeshopper\.com
(assert (str.in.re X (str.to.re "Host:Host:sidebar.activeshopper.com\x0a")))
; (\(")([0-9]*)(\")
(assert (not (str.in.re X (re.++ (str.to.re "(\x22") (re.* (re.range "0" "9")) (str.to.re "\x22\x0a")))))
; (\[url=?"?)([^\]"]*)("?\])([^\[]*)(\[/url\])
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "]") (str.to.re "\x22"))) (re.* (re.comp (str.to.re "["))) (str.to.re "[/url]\x0a[url") (re.opt (str.to.re "=")) (re.opt (str.to.re "\x22")) (re.opt (str.to.re "\x22")) (str.to.re "]"))))
(check-sat)
