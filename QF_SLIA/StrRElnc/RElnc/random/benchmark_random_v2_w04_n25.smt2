(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "60")))

(assert (str.in_re y (re.* (re.++ (str.to_re "8") (str.to_re "20")))))
(assert (str.in_re x (re.* (re.union (str.to_re "88") (re.++ (re.+ (re.range "2" "9")) (re.range "0" "9"))))))

(assert (= (+ (* 10 (str.len y)) (* (- 4) (str.to_int x))) 78))
(assert (= (- (str.to_int y)) 82))
(assert (< (+ (* 9 (str.to_int x)) (* (- 2) (str.to_int y))) 59))

(check-sat)