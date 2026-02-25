(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.++ (re.+ (re.+ (str.to_re "913"))) (str.to_re "79")) (str.to_re "86"))))
(assert (str.in_re x (re.++ (str.to_re "462") (re.* (re.range "5" "7")))))

(assert (= (+ (* (- 8) (str.len x)) (* (- 5) (str.len y)) (* 8 (str.to_int x))) 63))
(assert (= (+ (* 2 (str.len x)) (* 6 (str.to_int x)) (* (- 6) (str.to_int y))) 90))

(check-sat)