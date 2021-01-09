(declare-const X String)
; ^(0)$|^([1-9][0-9]*)$
(assert (not (str.in.re X (re.union (str.to.re "0") (re.++ (str.to.re "\x0a") (re.range "1" "9") (re.* (re.range "0" "9")))))))
; /\x2Fmrow\x5Fpin\x2F\x3Fid\d+[a-z]{5,}\d{5}\x26rnd\x3D\d+/smi
(assert (str.in.re X (re.++ (str.to.re "//mrow_pin/?id") (re.+ (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "&rnd=") (re.+ (re.range "0" "9")) (str.to.re "/smi\x0a") ((_ re.loop 5 5) (re.range "a" "z")) (re.* (re.range "a" "z")))))
; /User-Agent\x3a\sMSIE.*\x3b\sNT.*\x3b\sAV.*\x3b\sOV.*\x3b\sNA.*VR\x28PH5.0\sW20130912/H
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "MSIE") (re.* re.allchar) (str.to.re ";") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "NT") (re.* re.allchar) (str.to.re ";") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "AV") (re.* re.allchar) (str.to.re ";") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "OV") (re.* re.allchar) (str.to.re ";") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "NA") (re.* re.allchar) (str.to.re "VR(PH5") re.allchar (str.to.re "0") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "W20130912/H\x0a"))))
; ^((25[0-4]|(2[0-4]|1[0-9]|[1-9]?)[0-9]\.){3}(25[0-4]|(2[0-4]|1[0-9]|[1-9]?)[0-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.opt (re.range "1" "9"))) (re.range "0" "9") (str.to.re ".")))) (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.opt (re.range "1" "9"))) (re.range "0" "9"))))))
; /filename=[^\n]*\x2epsd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".psd/i\x0a")))))
(check-sat)
