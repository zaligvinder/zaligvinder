(declare-const X String)
; /version\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (str.in.re X (re.++ (str.to.re "/version=") (re.union (str.to.re "\x22") (str.to.re "'")) ((_ re.loop 1024 1024) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/\x0a"))))
; Guarded\s+ready\w+PARSERHost\x3aA-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecom
(assert (str.in.re X (re.++ (str.to.re "Guarded") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ready") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "PARSERHost:A-311ServerUser-Agent:scn.mystoretoolbar.com\x13\x0a"))))
; Strip-Player.*MyAgent.*\x2Fnewsurfer4\x2F
(assert (str.in.re X (re.++ (str.to.re "Strip-Player\x1b") (re.* re.allchar) (str.to.re "MyAgent") (re.* re.allchar) (str.to.re "/newsurfer4/\x0a"))))
; /appendChild\x28\s*document\x2ecreateElement\x28\s*[\x22\x27]button[\x22\x27].*?outerText\s*=\s*[\x22\x27]{2}/smi
(assert (str.in.re X (re.++ (str.to.re "/appendChild(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "document.createElement(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "button") (re.union (str.to.re "\x22") (str.to.re "'")) (re.* re.allchar) (str.to.re "outerText") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/smi\x0a"))))
; /\x2efli([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.fli") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
