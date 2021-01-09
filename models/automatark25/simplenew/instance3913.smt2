(declare-const X String)
; /(^|&)destination_ip=[^&]*?(\x60|\x24\x28|%60|%24%28)/Pmi
(assert (not (str.in.re X (re.++ (str.to.re "/&destination_ip=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "`") (str.to.re "$(") (str.to.re "%60") (str.to.re "%24%28")) (str.to.re "/Pmi\x0a")))))
(check-sat)
