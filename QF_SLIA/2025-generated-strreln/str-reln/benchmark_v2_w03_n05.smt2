(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.++ (str.to_re "5") (re.* (re.range "5" "7"))) (str.to_re "903"))))
(assert (str.in_re y (re.* (str.to_re "276"))))

(assert (<= (+ (* (- 10) (str.len x)) (* (- 8) (str.len y))) 81))
(assert (= (* 4 (str.to_int x)) 48))
(assert (>= (+ (* (- 2) (str.to_int x)) (* 7 (str.to_int y))) 95))

(check-sat)