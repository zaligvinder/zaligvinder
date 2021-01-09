(declare-const X String)
; /m.php\?do=(getvers|status|getcmd)/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/m") re.allchar (str.to.re "php?do=") (re.union (str.to.re "getvers") (str.to.re "status") (str.to.re "getcmd")) (str.to.re "/Ui\x0a")))))
; ^http\://[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(/\S*)?$
(assert (str.in.re X (re.++ (str.to.re "http://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (str.to.re "/") (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))) (str.to.re "\x0a"))))
; /^\/[0-9]{5}\.jar$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re ".jar/U\x0a")))))
; /(DisableSandboxAndDrop|ConfusedClass|FieldAccessVerifierExpl)\.class/ims
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "DisableSandboxAndDrop") (str.to.re "ConfusedClass") (str.to.re "FieldAccessVerifierExpl")) (str.to.re ".class/ims\x0a")))))
(check-sat)
