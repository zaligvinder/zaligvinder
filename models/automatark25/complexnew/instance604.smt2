(declare-const X String)
; Host\x3A00000www\x2Ezhongsou\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:00000www.zhongsou.com\x0a"))))
; /\x2exfdl([\?\x5c\x2f]|$)/miU
(assert (str.in.re X (re.++ (str.to.re "/.xfdl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/miU\x0a"))))
; (\bprotected\b.*(public))|(\bprivate\b.*(protected))|(\bprivate\b.*(public))
(assert (not (str.in.re X (re.union (re.++ (str.to.re "protected") (re.* re.allchar) (str.to.re "public")) (re.++ (str.to.re "private") (re.* re.allchar) (str.to.re "protected")) (re.++ (str.to.re "\x0aprivate") (re.* re.allchar) (str.to.re "public"))))))
; X-Mailer\x3A\s+ToolbarScanerX-Mailer\x3AInformation
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolbarScanerX-Mailer:\x13Information\x0a")))))
(check-sat)
