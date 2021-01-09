(declare-const X String)
; href[ ]*=[ ]*('|\")([^\"'])*('|\")
(assert (str.in.re X (re.++ (str.to.re "href") (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (re.union (str.to.re "'") (str.to.re "\x22")) (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (re.union (str.to.re "'") (str.to.re "\x22")) (str.to.re "\x0a"))))
; \x7D\x7BPassword\x3ADesktopDownloadfowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (str.to.re "}{Password:\x1bDesktopDownloadfowclxccdxn/uxwn.ddy\x0a")))
; ^(sip|sips)\:\+?([\w|\:?\.?\-?\@?\;?\,?\=\%\&]+)
(assert (not (str.in.re X (re.++ (str.to.re "sips:") (re.opt (str.to.re "+")) (re.+ (re.union (str.to.re "|") (str.to.re ":") (str.to.re "?") (str.to.re ".") (str.to.re "-") (str.to.re "@") (str.to.re ";") (str.to.re ",") (str.to.re "=") (str.to.re "%") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; ^[A-Z]{3}-[0-9]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
