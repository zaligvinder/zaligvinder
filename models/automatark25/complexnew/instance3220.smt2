(declare-const X String)
; /\x2ejpe([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jpe") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; subject\x3A.*Login\s+adfsgecoiwnf
(assert (str.in.re X (re.++ (str.to.re "subject:") (re.* re.allchar) (str.to.re "Login") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b\x0a"))))
; hirmvtg\x2fggqh\.kqh\d+sports\w+whenu\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in.re X (re.++ (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.+ (re.range "0" "9")) (str.to.re "sports") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "whenu.com\x13wp-includes/feed.php?\x0a"))))
; /filename=[^\n]*\x2emks/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mks/i\x0a"))))
; ^([34|37]{2})([0-9]{13})$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "3") (str.to.re "4") (str.to.re "|") (str.to.re "7"))) ((_ re.loop 13 13) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
