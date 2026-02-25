(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (str.to_re "260"))))
(assert (str.in_re y (re.++ (re.* (re.union (str.to_re "76") (re.+ (str.to_re "837")))) (str.to_re "948"))))

(assert (> (+ (* 2 (str.len x)) (* (- 9) (str.len y))) 1))
(assert (= (+ (* (- 5) (str.len y)) (* 3 (str.to_int y))) 97))
(assert (= (+ (* 2 (str.len x)) (* (- 10) (str.len y))) 0))

(check-sat)