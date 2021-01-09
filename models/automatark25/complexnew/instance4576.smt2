(declare-const X String)
; A-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecomWindowswww\.trackhits\.ccHost\x3a
(assert (not (str.in.re X (str.to.re "A-311ServerUser-Agent:scn.mystoretoolbar.com\x13Windowswww.trackhits.ccHost:\x0a"))))
; Stealthwww\x2Emyarmory\x2Ecomresultsmaster\x2Ecom
(assert (str.in.re X (str.to.re "Stealthwww.myarmory.comresultsmaster.com\x13\x0a")))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in.re X (str.to.re "client.baigoo.comUser:\x0a"))))
; /filename=[^\n]*\x2ewps/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wps/i\x0a"))))
(check-sat)
