(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.union (re.range "2" "5") (re.range "3" "9"))))))

(assert (>= (+ (* 4 (str.len x)) (- (str.to_int x))) 15))
(assert (< (* (- 5) (str.to_int x)) 95))

(check-sat)