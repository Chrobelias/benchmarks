(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (re.* (str.to_re "482")) (str.to_re "5")) (re.* (str.to_re "6")))))

(assert (> (+ (* 6 (str.len x)) (* (- 7) (str.to_int x))) 0))
(assert (>= (* 6 (str.len x)) 67))
(assert (<= (+ (* (- 4) (str.len x)) (* (- 2) (str.to_int x))) 18))

(check-sat)