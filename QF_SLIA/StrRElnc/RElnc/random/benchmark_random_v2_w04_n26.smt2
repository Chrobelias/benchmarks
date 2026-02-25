(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "48")))

(assert (str.in_re y (re.union (str.to_re "3") (re.+ (re.range "4" "8")))))
(assert (str.in_re x (re.union (re.++ (str.to_re "40") (re.+ (str.to_re "125"))) (str.to_re "8"))))

(assert (>= (+ (* 10 (str.len x)) (* (- 4) (str.len y))) 43))
(assert (< (+ (* (- 9) (str.len y)) (* 3 (str.to_int y))) 80))
(assert (< (+ (* 3 (str.to_int x)) (- (str.to_int y))) 24))

(check-sat)