(declare-const X String)
; /\.php\?hgfc\=[a-f0-9]+$/U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?hgfc=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; /\/bin\.exe$/U
(assert (not (str.in.re X (str.to.re "//bin.exe/U\x0a"))))
; Host\x3A\s+Agentbody=\x2521\x2521\x2521Optix
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13\x0a")))))
(check-sat)
