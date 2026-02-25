(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.+ (re.union (str.to_re "363") (re.* (str.to_re "25")))))))

(assert (< (+ (* 5 (str.len x)) (* 9 (str.to_int x))) 85))
(assert (< (* (- 8) (str.len x)) 61))
(assert (>= (* (- 9) (str.to_int x)) 90))

(check-sat)