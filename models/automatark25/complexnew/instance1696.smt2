(declare-const X String)
; ^\d*((\.\d+)?)*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.* (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (str.to.re "\x0a"))))
; ^([987]{1})(\d{1})(\d{8})
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "9") (str.to.re "8") (str.to.re "7"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3A\sclvompycem\x2fcen\.vcn
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "clvompycem/cen.vcn\x0a"))))
; /filename=[^\n]*\x2emka/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mka/i\x0a"))))
; /filename=[^\n]*\x2efon/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fon/i\x0a"))))
(check-sat)
