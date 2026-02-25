(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "50") (re.union (re.++ (re.+ (str.to_re "82")) (str.to_re "202")) (str.to_re "1")))))

(assert (< (* (- 2) (str.len x)) 75))
(assert (>= (+ (* 7 (str.len x)) (* (- 10) (str.to_int x))) 77))

(check-sat)