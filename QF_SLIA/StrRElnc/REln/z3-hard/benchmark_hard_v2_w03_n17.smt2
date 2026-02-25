(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.union (re.+ (re.* (str.to_re "7"))) (str.to_re "318")))))
(assert (str.in_re x (re.* (re.++ (re.union (str.to_re "729") (str.to_re "547")) (re.range "0" "4")))))

(assert (>= (+ (* 9 (str.to_int x)) (* (- 10) (str.to_int y))) 41))
(assert (<= (+ (* 10 (str.len x)) (* (- 5) (str.len y))) 0))
(assert (<= (+ (* 4 (str.to_int x)) (* 2 (str.to_int y))) 44))

(check-sat)