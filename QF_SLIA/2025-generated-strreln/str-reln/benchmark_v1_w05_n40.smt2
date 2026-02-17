(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "7")) (re.union (re.* (str.to_re "47")) (str.to_re "409")))))

(assert (<= (+ (* (- 9) (str.len x)) (* 7 (str.to_int x))) 14))
(assert (> (* 8 (str.len x)) 29))
(assert (>= (+ (* 4 (str.len x)) (* 6 (str.to_int x))) 43))

(check-sat)