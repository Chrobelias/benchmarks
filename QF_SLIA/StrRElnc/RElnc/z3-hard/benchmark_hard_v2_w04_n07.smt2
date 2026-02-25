(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "12" x)))

(assert (str.in_re y (re.+ (re.* (re.union (re.range "2" "7") (re.range "1" "8"))))))
(assert (str.in_re x (re.union (str.to_re "75") (re.++ (re.range "3" "6") (re.* (str.to_re "83"))))))

(assert (= (+ (- (str.len y)) (* (- 3) (str.to_int x))) 78))
(assert (= (+ (* (- 8) (str.to_int x)) (* (- 5) (str.to_int y))) 82))
(assert (= (* (- 4) (str.len y)) 100))

(check-sat)