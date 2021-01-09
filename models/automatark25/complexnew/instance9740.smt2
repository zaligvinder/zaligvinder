(declare-const X String)
; ^([0-9]{2})?((\([0-9]{2})\)|[0-9]{2})?([0-9]{3}|[0-9]{4})(\-)?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (re.union (re.++ (str.to.re ")(") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\r\nReferer\x3A\x20http\x3A\x2F\x2f[a-z0-9\x2d\x2e]+\x2F\x3Fdo\x3Dpayment\x26ver\x3D\d+\x26sid\x3D\d+\x26sn\x3D\d+\r\n/H
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aReferer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to.re "&sid=") (re.+ (re.range "0" "9")) (str.to.re "&sn=") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/H\x0a")))))
; ((mailto\:|(news|(ht|f)tp(s?))\://){1}\S+)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (str.to.re "mailto:") (re.++ (re.union (str.to.re "news") (re.++ (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")))) (str.to.re "://")))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
; /filename=[^\n]*\x2ecue/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cue/i\x0a"))))
(check-sat)
