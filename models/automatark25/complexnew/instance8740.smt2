(declare-const X String)
; EFError\swww\x2emalware-stopper\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a")))))
; ^[-]?\d*(\.\d*)$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (str.to.re "\x0a.") (re.* (re.range "0" "9"))))))
; ^\d{5}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\/ddd\/[a-z]{2}.gif/iU
(assert (str.in.re X (re.++ (str.to.re "//ddd/") ((_ re.loop 2 2) (re.range "a" "z")) re.allchar (str.to.re "gif/iU\x0a"))))
(check-sat)
