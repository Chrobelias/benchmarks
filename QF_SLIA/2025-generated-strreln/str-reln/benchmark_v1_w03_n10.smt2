(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "971") (re.+ (str.to_re "55")))))))

(assert (< (* (- 8) (str.to_int x)) 93))
(assert (= (+ (- (str.len x)) (* 7 (str.to_int x))) 63))

(check-sat)