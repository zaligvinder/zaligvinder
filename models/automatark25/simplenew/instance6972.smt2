(declare-const X String)
; 3AUser-Agent\x3AFROM\x3ARemoteqlqqlbojvii\x2fgtHost\x3A
(assert (not (str.in.re X (str.to.re "3AUser-Agent:FROM:Remoteqlqqlbojvii/gtHost:\x0a"))))
(check-sat)
