(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "64" x)))

(assert (str.in_re x (re.++ (re.++ (re.* (str.to_re "39")) (str.to_re "30")) (re.range "4" "9"))))
(assert (str.in_re y (re.++ (str.to_re "6") (re.* (re.+ (re.range "0" "8"))))))

(assert (= (+ (* 6 (str.len x)) (* 10 (str.to_int x))) 28))
(assert (< (+ (* 5 (str.len x)) (str.len y)) 36))
(assert (<= (+ (* (- 2) (str.to_int x)) (* 8 (str.to_int y))) 77))

(check-sat)