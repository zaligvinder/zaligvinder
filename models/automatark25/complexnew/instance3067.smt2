(declare-const X String)
; \[DRIVE\w+updates[^\n\r]*\x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "[DRIVE") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "updates") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x22StarLogger\x22User-Agent:JMailUser-Agent:\x0a"))))
; Softwarerequestedoffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "Softwarerequestedoffers.bullseye-network.com\x0a")))
(check-sat)
