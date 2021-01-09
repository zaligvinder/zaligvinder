(declare-const X String)
; /tip\x3D[a-zA-Z]+\x26cli\x3D[a-zA-Z]+\x26tipo\x3Dcli\x26inf\x3D/smiP
(assert (not (str.in.re X (re.++ (str.to.re "/tip=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "&cli=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "&tipo=cli&inf=/smiP\x0a")))))
; (/\*[\d\D]*?\*/)|(\/\*(\s*|.*?)*\*\/)|(\/\/.*)|(/\\*[\\d\\D]*?\\*/)|([\r\n ]*//[^\r\n]*)+
(assert (not (str.in.re X (re.union (re.++ (str.to.re "/*") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to.re "*/")) (re.++ (str.to.re "/*") (re.* (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar))) (str.to.re "*/")) (re.++ (str.to.re "//") (re.* re.allchar)) (re.++ (str.to.re "/") (re.* (str.to.re "\x5c")) (re.* (re.union (str.to.re "\x5c") (str.to.re "d") (str.to.re "D"))) (re.* (str.to.re "\x5c")) (str.to.re "/")) (re.++ (re.+ (re.++ (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " "))) (str.to.re "//") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))))) (str.to.re "\x0a"))))))
; 62[0-9]{14,17}
(assert (not (str.in.re X (re.++ (str.to.re "62") ((_ re.loop 14 17) (re.range "0" "9")) (str.to.re "\x0a")))))
; www\x2Ewebcruiser\x2EccJMailBoxHostGENERAL_PARAM2FT
(assert (not (str.in.re X (str.to.re "www.webcruiser.ccJMailBoxHostGENERAL_PARAM2FT\x0a"))))
(check-sat)
