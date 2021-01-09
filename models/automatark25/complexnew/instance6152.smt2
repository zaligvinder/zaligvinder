(declare-const X String)
; as\x2Estarware\x2Ecom.*Casino.*LOG.*FilteredHost\x3Ae2give\.com\x2Fnewsurfer4\x2F
(assert (not (str.in.re X (re.++ (str.to.re "as.starware.com") (re.* re.allchar) (str.to.re "Casino") (re.* re.allchar) (str.to.re "LOG") (re.* re.allchar) (str.to.re "FilteredHost:e2give.com/newsurfer4/\x0a")))))
; pgwtjgxwthx\x2fbyb\.xkyLOGurl=enews\x2Eearthlink\x2Enet
(assert (str.in.re X (str.to.re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\x0a")))
; (^([\w]+[^\W])([^\W]\.?)([\w]+[^\W]$))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; /filename\=\d+\.swf/H
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.range "0" "9")) (str.to.re ".swf/H\x0a"))))
(check-sat)
