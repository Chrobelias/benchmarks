(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.range "0" "7"))))

(assert (<= (* 4 (str.to_int x)) 32))
(assert (>= (+ (* (- 8) (str.len x)) (* (- 9) (str.to_int x))) 0))
(assert (<= (* 5 (str.to_int x)) 73))

(check-sat)