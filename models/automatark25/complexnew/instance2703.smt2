(declare-const X String)
; CD\x2F\.ico\x2FsLogearch195\.225\.
(assert (str.in.re X (str.to.re "CD/.ico/sLogearch195.225.\x0a")))
; ^[2-9][0-8]\d[2-9]\d{6}$
(assert (str.in.re X (re.++ (re.range "2" "9") (re.range "0" "8") (re.range "0" "9") (re.range "2" "9") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[0-9]+(,[0-9]+)*$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2epor/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".por/i\x0a"))))
(check-sat)
