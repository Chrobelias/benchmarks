(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (re.+ (str.to_re "515")) (re.+ (str.to_re "658"))) (str.to_re "34"))))

(assert (< (+ (* (- 6) (str.len x)) (* 6 (str.to_int x))) 77))
(assert (< (* (- 10) (str.len x)) 97))
(assert (>= (* 7 (str.to_int x)) 22))
(assert (< (* (- 6) (str.len x)) 66))

(check-sat)