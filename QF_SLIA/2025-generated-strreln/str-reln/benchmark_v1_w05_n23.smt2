(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "62"))))

(assert (>= (+ (* 3 (str.len x)) (* (- 6) (str.to_int x))) 26))
(assert (> (+ (* 10 (str.len x)) (* 8 (str.to_int x))) 83))
(assert (< (str.len x) 61))

(check-sat)