(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (str.to_re "265")))))

(assert (>= (+ (* 10 (str.len x)) (* 2 (str.to_int x))) 76))
(assert (<= (* (- 8) (str.len x)) 76))
(assert (> (+ (* 10 (str.len x)) (* (- 2) (str.to_int x))) 81))

(check-sat)