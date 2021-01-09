(declare-const X String)
; .*-[0-9]{1,10}.*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "-") ((_ re.loop 1 10) (re.range "0" "9")) (re.* re.allchar) (str.to.re "\x0a")))))
; ^-?([1]?[1-7][1-9]|[1]?[1-8][0]|[1-9]?[0-9])\.{1}\d{1,6}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "7") (re.range "1" "9")) (re.++ (re.opt (str.to.re "1")) (re.range "1" "8") (str.to.re "0")) (re.++ (re.opt (re.range "1" "9")) (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; \x3Cchat\x3EHost\x3Atid\x3D\x7B
(assert (not (str.in.re X (str.to.re "<chat>\x1bHost:tid={\x0a"))))
; ^\d(\d)?(\d)?$
(assert (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to.re "\x0a"))))
; \x7D\x7BPassword\x3ADesktopDownloadfowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (str.to.re "}{Password:\x1bDesktopDownloadfowclxccdxn/uxwn.ddy\x0a")))
(check-sat)
