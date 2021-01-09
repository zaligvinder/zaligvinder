(declare-const X String)
; /filename=[^\n]*\x2epfa/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfa/i\x0a")))))
; ^([0-9]{12},)+[0-9]{12}$|^([0-9]{12})$
(assert (str.in.re X (re.union (re.++ (re.+ (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\/click\?sid=\w{40}\&cid=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//click?sid=") ((_ re.loop 40 40) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "&cid=/Ui\x0a")))))
; User-Agent\x3A.*OSSProxy
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "OSSProxy\x0a")))))
(check-sat)
