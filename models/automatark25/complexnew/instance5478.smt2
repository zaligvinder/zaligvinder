(declare-const X String)
; ^[-]?([1-9]{1}[0-9]{0,}(\.[0-9]{0,2})?|0(\.[0-9]{0,2})?|\.[0-9]{1,2})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; toolbarplace\x2Ecom.*TencentTraveler\d+\x2Fnewsurfer4\x2F.*BysooTBADdcww\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* re.allchar) (str.to.re "TencentTraveler") (re.+ (re.range "0" "9")) (str.to.re "/newsurfer4/") (re.* re.allchar) (str.to.re "BysooTBADdcww.dmcast.com\x0a"))))
; /filename=[^\n]*\x2eeps/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".eps/i\x0a"))))
; encoder[^\n\r]*\.cfg\s+Host\x3AWeHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "encoder") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re ".cfg") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:WeHost:\x0a")))))
; /filename=[^\n]*\x2ejnlp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jnlp/i\x0a"))))
(check-sat)
