(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.* (str.to_re "36")) (re.union (re.+ (str.to_re "43")) (str.to_re "4")))))

(assert (> (* 10 (str.to_int x)) 90))
(assert (< (* (- 7) (str.len x)) 55))
(assert (<= (* (- 4) (str.to_int x)) 90))

(check-sat)