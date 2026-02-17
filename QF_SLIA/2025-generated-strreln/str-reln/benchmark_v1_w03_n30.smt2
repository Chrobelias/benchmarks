(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "927"))))

(assert (> (* 2 (str.len x)) 91))
(assert (>= (+ (* 7 (str.len x)) (* (- 3) (str.to_int x))) 88))

(check-sat)