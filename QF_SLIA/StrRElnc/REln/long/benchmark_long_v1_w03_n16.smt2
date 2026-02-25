(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (re.+ (re.* (str.to_re "47"))) (str.to_re "2")))))

(assert (< (- (str.to_int x)) 83))
(assert (<= (* (- 3) (str.len x)) 47))
(assert (< (* 10 (str.len x)) 45))

(check-sat)