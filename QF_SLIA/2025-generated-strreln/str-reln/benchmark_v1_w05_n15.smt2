(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "25"))))

(assert (< (* 6 (str.to_int x)) 76))
(assert (> (+ (* 5 (str.len x)) (* 7 (str.to_int x))) 25))
(assert (>= (* 6 (str.len x)) 6))
(assert (< (* 4 (str.to_int x)) 2))

(check-sat)