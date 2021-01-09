(declare-const X String)
; ^0$|^[1-9][0-9]*$|^[1-9][0-9]{0,2}(,[0-9]{3})$
(assert (not (str.in.re X (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a,") ((_ re.loop 3 3) (re.range "0" "9")))))))
; ver\d+sports\w+whenu\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in.re X (re.++ (str.to.re "ver") (re.+ (re.range "0" "9")) (str.to.re "sports") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "whenu.com\x13wp-includes/feed.php?\x0a"))))
; presentsearch\.netLocalHost\x3APORT\x3DWatchDogHost\x3A
(assert (str.in.re X (str.to.re "presentsearch.netLocalHost:PORT=WatchDogHost:\x0a")))
; ^\d*[0-9](\.\d?[0-9])?$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.opt (re.range "0" "9")) (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^[H][R][\-][0-9]{5}$
(assert (str.in.re X (re.++ (str.to.re "HR-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
