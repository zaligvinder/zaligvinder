(declare-const X String)
; ^(BG){0,1}([0-9]{9}|[0-9]{10})$
(assert (str.in_re X (re.++ (re.opt (str.to_re "BG")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to_re "\u{a}"))))
; Port\u{2E}body=ocllceclbhs\u{2f}gthWeComputerLoggerHost\u{3A}gdvsotuqwsg\u{2f}dxt\.hd^User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "Port.body=ocllceclbhs/gthWeComputerLoggerHost:gdvsotuqwsg/dxt.hdUser-Agent:\u{a}"))))
; ^[\d]{1,}?\.[\d]{2}$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
; (\$\s*[\d,]+\.\d{2})\b
(assert (str.in_re X (re.++ (str.to_re "\u{a}$") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "0" "9") (str.to_re ","))) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))))
(check-sat)
