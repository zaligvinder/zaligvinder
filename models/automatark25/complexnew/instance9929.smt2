(declare-const X String)
; ^(0|(-?(((0|[1-9]\d*)\.\d+)|([1-9]\d*))))$
(assert (str.in.re X (re.++ (re.union (str.to.re "0") (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))))) (str.to.re "\x0a"))))
; Stealthwww\x2Emyarmory\x2Ecomresultsmaster\x2Ecom
(assert (not (str.in.re X (str.to.re "Stealthwww.myarmory.comresultsmaster.com\x13\x0a"))))
; /filename=[^\n]*\x2exls/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xls/i\x0a")))))
; ^[a-zA-Z]{1}[-][0-9]{7}[-][a-zA-Z]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; www\x2Eserverlogic3\x2Ecom\d+ToolBar.*Host\x3AHWAEUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to.re "ToolBar") (re.* re.allchar) (str.to.re "Host:HWAEUser-Agent:\x0a"))))
(check-sat)
