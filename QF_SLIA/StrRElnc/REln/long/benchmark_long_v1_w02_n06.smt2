(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.* (str.to_re "0")) (re.++ (str.to_re "4") (str.to_re "653")))))

(assert (< (- (str.len x)) 32))
(assert (>= (* 3 (str.to_int x)) 92))

(check-sat)