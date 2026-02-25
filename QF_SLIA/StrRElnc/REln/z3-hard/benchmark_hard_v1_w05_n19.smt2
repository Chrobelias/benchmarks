(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (re.range "6" "9") (re.+ (str.to_re "154"))) (str.to_re "873"))))

(assert (<= (* (- 7) (str.to_int x)) 55))
(assert (<= (* 8 (str.to_int x)) 32))
(assert (< (* (- 2) (str.len x)) 60))
(assert (< (* (- 10) (str.len x)) 59))
(assert (< (* (- 3) (str.len x)) 56))

(check-sat)