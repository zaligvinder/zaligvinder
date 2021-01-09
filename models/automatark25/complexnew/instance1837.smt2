(declare-const X String)
; ^(\(\d{2}\)?\s?|\d{2}(\-|\s))?\d{2,4}(\-|\s)?\d{4,5}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; toolbarplace\x2Ecom.*TencentTraveler\d+\x2Fnewsurfer4\x2F.*BysooTBADdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* re.allchar) (str.to.re "TencentTraveler") (re.+ (re.range "0" "9")) (str.to.re "/newsurfer4/") (re.* re.allchar) (str.to.re "BysooTBADdcww.dmcast.com\x0a")))))
; /filename=[^\n]*\x2ewsz/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wsz/i\x0a"))))
(check-sat)
