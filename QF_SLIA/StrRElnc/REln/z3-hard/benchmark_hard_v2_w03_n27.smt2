(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.* (re.++ (re.* (str.to_re "176")) (str.to_re "740"))) (str.to_re "4"))))
(assert (str.in_re y (re.union (str.to_re "56") (re.+ (re.range "5" "9")))))

(assert (> (+ (* 10 (str.to_int x)) (* (- 2) (str.to_int y))) 48))
(assert (<= (+ (* (- 6) (str.to_int x)) (* (- 10) (str.to_int y))) 7))
(assert (>= (+ (* (- 7) (str.len x)) (* 6 (str.len y))) 54))

(check-sat)