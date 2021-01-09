(declare-const X String)
; 3AUser-Agent\x3AFROM\x3ARemoteqlqqlbojvii\x2fgtHost\x3A
(assert (not (str.in.re X (str.to.re "3AUser-Agent:FROM:Remoteqlqqlbojvii/gtHost:\x0a"))))
; /filename=[^\n]*\x2eflac/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".flac/i\x0a"))))
(check-sat)
