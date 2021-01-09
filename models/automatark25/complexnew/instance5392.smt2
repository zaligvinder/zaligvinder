(declare-const X String)
; /^\x2fwp-content\x2fthemes\x2f[A-Za-z0-9]\.php\?[A-Za-z0-9\x2B\x2F\x3D]{300}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//wp-content/themes/") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (str.to.re ".php?") ((_ re.loop 300 300) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/") (str.to.re "="))) (str.to.re "/Ui\x0a")))))
; A-311.*with\x3A\s+OnlineServer\x3aYeah\!User-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "A-311") (re.* re.allchar) (str.to.re "with:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OnlineServer:Yeah!User-Agent:\x0a"))))
; User-Agent\x3AHost\x3AhasHost\x3AComputerKeylogger\x2Ecom
(assert (str.in.re X (str.to.re "User-Agent:Host:hasHost:ComputerKeylogger.com\x0a")))
; ^([EV])?\d{3,3}(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "E") (str.to.re "V"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /^Host:\s*?[a-f0-9]{63,64}\./Him
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 63 64) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "./Him\x0a")))))
(check-sat)
