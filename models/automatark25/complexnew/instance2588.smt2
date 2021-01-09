(declare-const X String)
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x00\x00\x00\x00") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to.re "\x00\x00\x00\x00") ((_ re.loop 12 12) re.allchar)))) (str.to.re "/s\x0a"))))
; /\x2fblackmuscats?\x3f\d/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//blackmuscat") (re.opt (str.to.re "s")) (str.to.re "?") (re.range "0" "9") (str.to.re "/Ui\x0a")))))
; /filename=[^\n]*\x2emka/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mka/i\x0a")))))
(check-sat)
