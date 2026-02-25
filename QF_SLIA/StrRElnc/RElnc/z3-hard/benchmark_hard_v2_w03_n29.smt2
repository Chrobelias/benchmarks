(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "49")))

(assert (str.in_re y (re.++ (re.* (str.to_re "566")) (re.* (re.range "1" "9")))))
(assert (str.in_re x (re.* (str.to_re "18"))))

(assert (<= (+ (* 6 (str.to_int x)) (* (- 5) (str.to_int y))) 53))
(assert (< (+ (* (- 4) (str.len y)) (* 5 (str.to_int y))) 51))

(check-sat)