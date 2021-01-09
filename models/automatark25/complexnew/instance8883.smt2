(declare-const X String)
; /\/[a-f0-9]{32}\/[a-f0-9]{32}\x22/R
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x22/R\x0a"))))
; uuid=\s+User-Agent\x3a\d+\x5Chome\/lordofsearch
(assert (not (str.in.re X (re.++ (str.to.re "uuid=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "\x5chome/lordofsearch\x0a")))))
; toolbarplace\x2Ecom\sUser-Agent\x3a\d+\x2Fnewsurfer4\x2Fclient=BysooTBADdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "/newsurfer4/client=BysooTBADdcww.dmcast.com\x0a")))))
; /User-Agent\x3a[^\x0d\x0a]*Java\/1\./H
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Java/1./H\x0a")))))
; /filename=[^\n]*\x2esmi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smi/i\x0a"))))
(check-sat)
