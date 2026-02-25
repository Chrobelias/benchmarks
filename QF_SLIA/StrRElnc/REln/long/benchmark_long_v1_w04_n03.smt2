(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.+ (re.range "0" "3")) (re.++ (re.range "0" "5") (re.* (re.range "7" "9"))))))

(assert (> (* 2 (str.len x)) 81))
(assert (> (+ (* (- 10) (str.len x)) (- (str.to_int x))) 86))
(assert (= (- (str.len x)) 35))

(check-sat)