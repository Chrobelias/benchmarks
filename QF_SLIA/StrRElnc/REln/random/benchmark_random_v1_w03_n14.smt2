(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "26"))))

(assert (> (+ (* 7 (str.len x)) (* (- 4) (str.to_int x))) 98))
(assert (< (* (- 4) (str.to_int x)) 15))

(check-sat)