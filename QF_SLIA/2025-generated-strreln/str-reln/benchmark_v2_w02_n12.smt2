(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (str.to_re "387"))))
(assert (str.in_re y (re.++ (re.* (re.++ (str.to_re "8") (str.to_re "8"))) (re.range "2" "6"))))

(assert (< (+ (* 2 (str.to_int x)) (str.to_int y)) 33))
(assert (<= (+ (* 6 (str.len x)) (* (- 4) (str.len y))) 47))

(check-sat)