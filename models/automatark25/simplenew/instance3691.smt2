(declare-const X String)
; /pdf\.php\?pdf=[0-9A-F]+&type=\d+&o=[^&]+&b=/U
(assert (str.in.re X (re.++ (str.to.re "/pdf.php?pdf=") (re.+ (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "&type=") (re.+ (re.range "0" "9")) (str.to.re "&o=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&b=/U\x0a"))))
(check-sat)
