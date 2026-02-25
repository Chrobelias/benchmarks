(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (re.++ (re.union (re.* (str.to_re "25")) (str.to_re "717")) (str.to_re "22")) (re.range "4" "8"))))
(assert (str.in_re y (re.++ (str.to_re "53") (re.++ (str.to_re "975") (re.* (str.to_re "89"))))))

(assert (<= (+ (* 7 (str.len x)) (* (- 5) (str.to_int y))) 79))
(assert (= (+ (* (- 9) (str.to_int x)) (- (str.to_int y))) 47))

(check-sat)