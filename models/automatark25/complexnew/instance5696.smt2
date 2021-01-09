(declare-const X String)
; /filename=[^\n]*\x2epjpeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pjpeg/i\x0a"))))
; /\x2epcx([\x3f\x2f]|$)/Uim
(assert (not (str.in.re X (re.++ (str.to.re "/.pcx") (re.union (str.to.re "?") (str.to.re "/")) (str.to.re "/Uim\x0a")))))
; /(\d*\.?\d+)\s?(px|em|ex|%|in|cn|mm|pt|pc+)/igm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "px") (str.to.re "em") (str.to.re "ex") (str.to.re "%") (str.to.re "in") (str.to.re "cn") (str.to.re "mm") (str.to.re "pt") (re.++ (str.to.re "p") (re.+ (str.to.re "c")))) (str.to.re "/igm\x0a") (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))))))
(check-sat)
