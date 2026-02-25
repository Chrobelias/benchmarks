(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "46")) (str.to_re "925"))))
(assert (str.in_re y (re.* (re.++ (re.* (re.range "3" "6")) (str.to_re "469")))))

(assert (<= (+ (* 2 (str.len x)) (* 2 (str.to_int x))) 47))
(assert (>= (+ (* 10 (str.len x)) (* 2 (str.len y))) 82))

(check-sat)