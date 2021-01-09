(declare-const X String)
; 666Host\x3aWEBCAM-Host\x3a
(assert (str.in.re X (str.to.re "666Host:WEBCAM-Host:\x0a")))
; Spy\-Locked\s+ExploiterSchwindler\x2Fr\x2Fkeys\x2Fkeys
(assert (str.in.re X (re.++ (str.to.re "Spy-Locked") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ExploiterSchwindler/r/keys/keys\x0a"))))
; ^([987]{1})(\d{1})(\d{8})
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "9") (str.to.re "8") (str.to.re "7"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; /^\/\d\x2eexe/Ui
(assert (str.in.re X (re.++ (str.to.re "//") (re.range "0" "9") (str.to.re ".exe/Ui\x0a"))))
; (\[[Ii][Mm][Gg]\])(\S+?)(\[\/[Ii][Mm][Gg]\])
(assert (not (str.in.re X (re.++ (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a[") (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "M") (str.to.re "m")) (re.union (str.to.re "G") (str.to.re "g")) (str.to.re "][/") (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "M") (str.to.re "m")) (re.union (str.to.re "G") (str.to.re "g")) (str.to.re "]")))))
(check-sat)
