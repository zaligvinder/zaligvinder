(declare-const X String)
; /&key=[a-z0-9]{32}&dummy=\d{3,5}/Ui
(assert (str.in.re X (re.++ (str.to.re "/&key=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "&dummy=") ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; /\x2f[a-z0-9]+\.php\?php\x3dreceipt$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".php?php=receipt/Ui\x0a"))))
; /filename=[^\n]*\x2ezip/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".zip/i\x0a"))))
; ^.{2,}$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) re.allchar) (re.* re.allchar))))
; ^\\([^\\]+\\)*[^\/:*?"<>|]?$
(assert (str.in.re X (re.++ (str.to.re "\x5c") (re.* (re.++ (re.+ (re.comp (str.to.re "\x5c"))) (str.to.re "\x5c"))) (re.opt (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "\x0a"))))
(check-sat)
