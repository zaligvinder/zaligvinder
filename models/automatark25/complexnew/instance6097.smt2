(declare-const X String)
; /IPHONE\d+.\d/sH
(assert (not (str.in.re X (re.++ (str.to.re "/IPHONE") (re.+ (re.range "0" "9")) re.allchar (re.range "0" "9") (str.to.re "/sH\x0a")))))
; \b4[0-9]\b
(assert (not (str.in.re X (re.++ (str.to.re "4") (re.range "0" "9") (str.to.re "\x0a")))))
; <[^>]*?>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
; /filename=[^\n]*\x2edws/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dws/i\x0a")))))
(check-sat)
