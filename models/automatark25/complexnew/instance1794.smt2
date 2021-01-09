(declare-const X String)
; Reports[^\n\r]*User-Agent\x3A.*largePass-Onseqepagqfphv\x2fsfd
(assert (not (str.in.re X (re.++ (str.to.re "Reports") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "largePass-Onseqepagqfphv/sfd\x0a")))))
; (.|[\r\n]){1,5}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 5) (re.union re.allchar (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a")))))
; /<\s*col[^>]*width\s*=\s*[\x22\x27]?\d{7}/i
(assert (str.in.re X (re.++ (str.to.re "/<") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "col") (re.* (re.comp (str.to.re ">"))) (str.to.re "width") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "/i\x0a"))))
; /\/blog\/images\/3521\.jpg\?v\d{2}=\d{2}\x26tq=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//blog/images/3521.jpg?v") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "&tq=/Ui\x0a")))))
; /appendChild\x28\s*document\x2ecreateElement\x28\s*[\x22\x27]button[\x22\x27].*?outerText\s*=\s*[\x22\x27]{2}/smi
(assert (str.in.re X (re.++ (str.to.re "/appendChild(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "document.createElement(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "button") (re.union (str.to.re "\x22") (str.to.re "'")) (re.* re.allchar) (str.to.re "outerText") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/smi\x0a"))))
(check-sat)
