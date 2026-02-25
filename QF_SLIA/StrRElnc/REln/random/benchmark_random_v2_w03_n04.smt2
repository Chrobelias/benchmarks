(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (str.to_re "83"))))
(assert (str.in_re x (re.++ (re.* (re.union (re.+ (str.to_re "70")) (str.to_re "88"))) (str.to_re "493"))))

(assert (> (* 9 (str.to_int x)) 47))
(assert (< (+ (* (- 7) (str.len x)) (* (- 10) (str.len y))) 74))
(assert (<= (+ (* (- 3) (str.to_int x)) (* (- 4) (str.to_int y))) 90))

(check-sat)