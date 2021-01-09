(declare-const X String)
; ^1?[1-2]$|^[1-9]$|^[1]0$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "2")) (re.range "1" "9") (str.to.re "10\x0a"))))
; www\x2Eserverlogic3\x2Ecom\d+ToolBar\s+HWAEUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to.re "ToolBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAEUser-Agent:\x0a"))))
; /m.php\?do=(getvers|status|getcmd)/Ui
(assert (str.in.re X (re.++ (str.to.re "/m") re.allchar (str.to.re "php?do=") (re.union (str.to.re "getvers") (str.to.re "status") (str.to.re "getcmd")) (str.to.re "/Ui\x0a"))))
(check-sat)
