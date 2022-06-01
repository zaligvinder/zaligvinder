(declare-const X String)
; /\?spl=\d&br=[^&]+&vers=[^&]+&s=/H
(assert (str.in_re X (re.++ (str.to_re "/?spl=") (re.range "0" "9") (str.to_re "&br=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&vers=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&s=/H\u{a}"))))
; OSSProxy\d+X-Mailer\u{3A}backtrust\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "OSSProxy") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}backtrust.com\u{a}")))))
(check-sat)
