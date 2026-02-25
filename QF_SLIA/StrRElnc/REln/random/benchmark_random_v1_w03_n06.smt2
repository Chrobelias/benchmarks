(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (re.range "0" "9") (str.to_re "399")) (re.* (str.to_re "401")))))

(assert (> (+ (* (- 10) (str.len x)) (- (str.to_int x))) 49))
(assert (< (* (- 4) (str.to_int x)) 64))

(check-sat)