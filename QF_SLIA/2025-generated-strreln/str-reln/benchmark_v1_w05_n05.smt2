(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "802") (str.to_re "575")))))

(assert (< (* (- 9) (str.to_int x)) 42))
(assert (>= (+ (* (- 9) (str.len x)) (* 8 (str.to_int x))) 77))
(assert (>= (+ (* 9 (str.len x)) (* (- 4) (str.to_int x))) 85))

(check-sat)