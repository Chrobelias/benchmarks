(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.union (re.union (str.to_re "462") (re.* (str.to_re "80"))) (re.range "2" "9"))))
(assert (str.in_re z (re.* (str.to_re "8"))))
(assert (str.in_re x (re.* (re.++ (re.range "3" "8") (str.to_re "77")))))

(assert (<= (+ (* 5 (str.len x)) (* (- 6) (str.len z))) 80))
(assert (<= (+ (* (- 8) (str.to_int x)) (* (- 10) (str.to_int y)) (* (- 9) (str.to_int z))) 74))

(check-sat)