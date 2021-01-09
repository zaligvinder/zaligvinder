(declare-const X String)
; source%3Dultrasearch136%26campaign%3DsnapuplogWinInet3Azopabora\x2Einfo
(assert (str.in.re X (str.to.re "source%3Dultrasearch136%26campaign%3DsnapuplogWinInet3Azopabora.info\x0a")))
; /\/r_autoidcnt\.asp\?mer_seq=\d[^\r\n]*\x26mac=/Ui
(assert (str.in.re X (re.++ (str.to.re "//r_autoidcnt.asp?mer_seq=") (re.range "0" "9") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a"))))
; /filename=[^\n]*\x2esln/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sln/i\x0a")))))
; ([+(]?\d{0,2}[)]?)([-/.\s]?\d+)+
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "/") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a") (re.opt (re.union (str.to.re "+") (str.to.re "("))) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (str.to.re ")"))))))
; /^[1-9][0-9][0-9][0-9][0-9][0-9]$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to.re "/\x0a")))))
(check-sat)
