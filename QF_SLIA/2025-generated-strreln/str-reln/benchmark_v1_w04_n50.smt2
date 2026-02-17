(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "7") (re.+ (str.to_re "99")))))))

(assert (< (* (- 2) (str.to_int x)) 89))
(assert (< (+ (* (- 9) (str.len x)) (str.to_int x)) 43))
(assert (>= (* 7 (str.to_int x)) 59))

(check-sat)