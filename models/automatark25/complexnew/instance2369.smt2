(declare-const X String)
; ^(BG){0,1}([0-9]{9}|[0-9]{10})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "BG")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a"))))
; Port\x2Ebody=ocllceclbhs\x2fgthWeComputerLoggerHost\x3Agdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (not (str.in.re X (str.to.re "Port.body=ocllceclbhs/gthWeComputerLoggerHost:gdvsotuqwsg/dxt.hdUser-Agent:\x0a"))))
; ^[\d]{1,}?\.[\d]{2}$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; (\$\s*[\d,]+\.\d{2})\b
(assert (str.in.re X (re.++ (str.to.re "\x0a$") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "0" "9") (str.to.re ","))) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))))
(check-sat)
