(declare-const X String)
; /filename=[^\n]*\x2esmil/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smil/i\x0a"))))
; ovpl\s+\x7D\x7BPort\x3A.*SOAPAction\x3A.*adfsgecoiwnfHost\x3A\x3Fsearch\x3D
(assert (not (str.in.re X (re.++ (str.to.re "ovpl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:") (re.* re.allchar) (str.to.re "SOAPAction:") (re.* re.allchar) (str.to.re "adfsgecoiwnf\x1bHost:?search=\x0a")))))
; ^((\b[A-Z0-9](\w)*\b)|\s)*$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (re.union (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; \stoolbar\.anwb\.nl\s+A-311\s+newsSoftActivitypassword\x3B1\x3BOptix
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "A-311") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "newsSoftActivity\x13password;1;Optix\x0a"))))
(check-sat)
