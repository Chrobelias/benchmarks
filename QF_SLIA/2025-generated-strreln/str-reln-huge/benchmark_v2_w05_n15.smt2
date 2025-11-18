(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.union (re.* (re.+ (re.range "1" "6"))) (str.to_re "496"))))
(assert (str.in_re y (re.+ (re.* (re.++ (str.to_re "591") (str.to_re "68"))))))

(assert (<= (+ (* 3 (str.len y)) (* 3 (str.to_int x))) 69))
(assert (>= (+ (* 9 (str.len x)) (* (- 9) (str.len y))) 87))
(assert (> (+ (* 5 (str.len y)) (* (- 6) (str.to_int y))) 47))

(check-sat)