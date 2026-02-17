(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "4") (str.to_re "7")))))

(assert (<= (+ (- (str.len x)) (* 3 (str.to_int x))) 91))
(assert (< (+ (* (- 3) (str.len x)) (- (str.to_int x))) 63))

(check-sat)