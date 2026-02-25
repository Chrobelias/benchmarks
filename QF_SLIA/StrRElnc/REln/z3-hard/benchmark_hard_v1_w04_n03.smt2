(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "79") (str.to_re "561")))))

(assert (> (+ (* 6 (str.len x)) (* (- 8) (str.to_int x))) 21))
(assert (> (+ (* 7 (str.len x)) (* 5 (str.to_int x))) 98))

(check-sat)