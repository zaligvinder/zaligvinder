(declare-const X String)
; comLOGUser-Agent\x3Aistsvcwww\x2Eoemji\x2EcomSystemSleuth
(assert (str.in.re X (str.to.re "comLOGUser-Agent:istsvcwww.oemji.comSystemSleuth\x13\x0a")))
; ^1?[1-2]$|^[1-9]$|^[1]0$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "2")) (re.range "1" "9") (str.to.re "10\x0a"))))
; /filename=[^\n]*\x2eplf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".plf/i\x0a")))))
; ^((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*);|(0|[1-9]+[0-9]*);)*?((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*)|(0|[1-9]+[0-9]*)){1}$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "-") (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re ";")) (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re ";")))) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "-") (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to.re "\x0a")))))
; Port\x2Ebody=ocllceclbhs\x2fgthWeComputerLoggerHost\x3Agdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (str.in.re X (str.to.re "Port.body=ocllceclbhs/gthWeComputerLoggerHost:gdvsotuqwsg/dxt.hdUser-Agent:\x0a")))
(check-sat)
