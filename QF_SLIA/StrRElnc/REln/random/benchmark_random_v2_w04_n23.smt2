(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "90")) (re.* (str.to_re "715"))) (str.to_re "5"))))
(assert (str.in_re y (re.++ (re.* (str.to_re "59")) (str.to_re "39"))))

(assert (< (+ (* 7 (str.len x)) (* (- 3) (str.len y))) 32))
(assert (= (+ (* (- 6) (str.len x)) (* (- 5) (str.to_int y))) 8))
(assert (<= (+ (* 5 (str.len x)) (* (- 5) (str.len y))) 47))

(check-sat)