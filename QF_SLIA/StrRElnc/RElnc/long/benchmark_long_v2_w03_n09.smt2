(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= (str.++ y "36") (str.++ "65" x)))

(assert (str.in_re y (re.+ (re.union (re.union (str.to_re "28") (re.* (re.range "4" "9"))) (str.to_re "659")))))
(assert (str.in_re x (re.union (str.to_re "124") (re.union (re.range "1" "7") (re.* (re.range "1" "7"))))))

(assert (> (+ (* (- 8) (str.len y)) (- (str.to_int y))) 35))
(assert (<= (* 5 (str.to_int x)) 97))

(check-sat)