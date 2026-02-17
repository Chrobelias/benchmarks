(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "68") (re.* (str.to_re "7")))))

(assert (= (+ (* 8 (str.len x)) (* (- 9) (str.to_int x))) 73))
(assert (< (+ (str.len x) (* (- 5) (str.to_int x))) 77))
(assert (>= (* 3 (str.to_int x)) 56))

(check-sat)