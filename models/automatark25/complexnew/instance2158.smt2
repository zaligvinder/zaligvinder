(declare-const X String)
; /\/docushare\/dsweb\/ResultBackgroundJobMultiple\/\d*[^\d]/U
(assert (str.in.re X (re.++ (str.to.re "//docushare/dsweb/ResultBackgroundJobMultiple/") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to.re "/U\x0a"))))
; Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (not (str.in.re X (str.to.re "Subject:AlexaOnline%21%21%21\x0a"))))
; ^(\d+\.\d+)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")))))
; /filename=[^\n]*\x2ef4b/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4b/i\x0a"))))
(check-sat)
