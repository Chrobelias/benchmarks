(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "70") (re.* (re.++ (re.* (str.to_re "87")) (str.to_re "21"))))))

(assert (> (+ (* 4 (str.len x)) (* (- 10) (str.to_int x))) 84))
(assert (<= (* 10 (str.to_int x)) 0))
(assert (<= (+ (- (str.len x)) (* (- 4) (str.to_int x))) 11))

(check-sat)