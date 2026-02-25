(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "48")))

(assert (str.in_re y (re.+ (re.range "4" "9"))))
(assert (str.in_re x (re.* (re.range "3" "8"))))

(assert (<= (+ (* (- 9) (str.to_int x)) (* (- 10) (str.to_int y))) 21))
(assert (= (+ (* (- 10) (str.len y)) (* 7 (str.to_int x)) (* 6 (str.to_int y))) 50))

(check-sat)