(declare-const X String)
; .*-[0-9]{1,10}.*
(assert (not (str.in_re X (re.++ (re.* re.allchar) (str.to_re "-") ((_ re.loop 1 10) (re.range "0" "9")) (re.* re.allchar) (str.to_re "\u{a}")))))
; ^-?([1]?[1-7][1-9]|[1]?[1-8][0]|[1-9]?[0-9])\.{1}\d{1,6}
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.union (re.++ (re.opt (str.to_re "1")) (re.range "1" "7") (re.range "1" "9")) (re.++ (re.opt (str.to_re "1")) (re.range "1" "8") (str.to_re "0")) (re.++ (re.opt (re.range "1" "9")) (re.range "0" "9"))) ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 1 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
; \u{3C}chat\u{3E}Host\u{3A}tid\u{3D}\u{7B}
(assert (not (str.in_re X (str.to_re "<chat>\u{1b}Host:tid={\u{a}"))))
; ^\d(\d)?(\d)?$
(assert (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re "\u{a}"))))
; \u{7D}\u{7B}Password\u{3A}DesktopDownloadfowclxccdxn\u{2f}uxwn\.ddy
(assert (str.in_re X (str.to_re "}{Password:\u{1b}DesktopDownloadfowclxccdxn/uxwn.ddy\u{a}")))
(check-sat)
