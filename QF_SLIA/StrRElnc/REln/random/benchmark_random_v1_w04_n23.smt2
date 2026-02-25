(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "66"))))

(assert (> (* 7 (str.len x)) 85))
(assert (< (+ (* (- 6) (str.len x)) (* 6 (str.to_int x))) 14))
(assert (> (str.len x) 42))

(check-sat)