(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "81") (str.to_re "939")))))

(assert (>= (* 2 (str.to_int x)) 17))
(assert (< (+ (str.len x) (* (- 10) (str.to_int x))) 23))

(check-sat)