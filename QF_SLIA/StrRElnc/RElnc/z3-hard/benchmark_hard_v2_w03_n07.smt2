(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "45" x)))

(assert (str.in_re x (re.+ (str.to_re "77"))))
(assert (str.in_re y (re.union (re.++ (str.to_re "15") (str.to_re "511")) (re.+ (re.range "2" "7")))))

(assert (<= (+ (* (- 9) (str.len x)) (* (- 4) (str.len y))) 35))
(assert (> (+ (* (- 10) (str.to_int x)) (* 10 (str.to_int y))) 89))
(assert (= (+ (* (- 7) (str.to_int x)) (* 3 (str.to_int y))) 43))

(check-sat)