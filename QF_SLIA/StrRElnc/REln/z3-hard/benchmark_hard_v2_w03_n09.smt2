(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.++ (str.to_re "536") (str.to_re "7")) (re.+ (str.to_re "36")))))
(assert (str.in_re x (re.++ (re.union (str.to_re "7") (re.* (str.to_re "406"))) (re.range "1" "9"))))

(assert (= (+ (* (- 6) (str.len y)) (str.to_int x)) 79))
(assert (< (+ (* (- 4) (str.len x)) (* 10 (str.len y))) 48))

(check-sat)