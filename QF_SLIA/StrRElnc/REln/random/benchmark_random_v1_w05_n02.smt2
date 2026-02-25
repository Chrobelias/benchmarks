(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "98"))))

(assert (> (* (- 7) (str.to_int x)) 70))
(assert (= (str.len x) 34))
(assert (> (+ (* 4 (str.len x)) (* (- 5) (str.to_int x))) 38))
(assert (> (* (- 6) (str.len x)) 99))

(check-sat)