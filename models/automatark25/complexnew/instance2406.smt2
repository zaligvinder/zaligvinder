(declare-const X String)
; ^([0-9]*\-?\ ?\/?[0-9]*)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) (re.opt (str.to.re "/")) (re.* (re.range "0" "9")))))
; versionIDENTIFYstarted\x2EUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "versionIDENTIFYstarted.User-Agent:\x0a"))))
; /^\/[a-z]{2,20}\.php\?[a-z]{2,10}\x3d[a-zA-Z0-9\x2f\x2b]+\x3d$/I
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 20) (re.range "a" "z")) (str.to.re ".php?") ((_ re.loop 2 10) (re.range "a" "z")) (str.to.re "=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "+"))) (str.to.re "=/I\x0a"))))
; $sPatternTablet = '/(Tablet|iPad|iPod)/';
(assert (str.in.re X (re.++ (str.to.re "sPatternTablet = '/") (re.union (str.to.re "Tablet") (str.to.re "iPad") (str.to.re "iPod")) (str.to.re "/';\x0a"))))
; Server\.exeHWPEServer\x3aHost\x3A
(assert (not (str.in.re X (str.to.re "Server.exeHWPEServer:Host:\x0a"))))
(check-sat)
